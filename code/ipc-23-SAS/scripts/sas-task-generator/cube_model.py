import numpy


class CubeModel:
    DIMENSIONS = 3
    FACES = ['F', 'B', 'L', 'R', 'U', 'D']

    def __init__(self, small=False, problem=None):
        self.size = 2 if small else 3
        self.min_index = 0
        self.max_index = self.size - 1
        self.boundary = [self.min_index, self.max_index]

        # (pieces on the cube, possible rotations)
        self.cubies = {
            "corner": (8, 3),
        }
        if not small:
            self.cubies["edge"] = (12, 2)

        self.cube, self.locations, self.rotations = self.initialize_cube()

        if problem is None:
            self.problem = ""
        else:
            self.problem = problem
            self.controlled_shuffle(problem)

    def initialize_cube(self):
        variable = numpy.zeros((self.size, self.size, self.size), dtype=int) - 1
        location = numpy.zeros((self.size, self.size, self.size), dtype=int) - 1
        rotation = numpy.zeros((self.size, self.size, self.size),
                               dtype=(int, self.DIMENSIONS))
        variable_counter = 0

        # initialize corner cubies
        for x in self.boundary:
            for y in self.boundary:
                for z in self.boundary:
                    assert self.is_corner(x, y, z)
                    variable[x, y, z] = variable_counter
                    # The variable ID corresponds to the location ID for corners
                    location[x, y, z] = variable_counter
                    variable_counter += 1
                    if ((x == self.max_index) + (y == self.max_index) +
                        (z == self.max_index)) % 2 == 0:
                        rotation[x, y, z] = 0, 1, 2
                    else:
                        rotation[x, y, z] = 0, 2, 1

        if self.size == 3:
            location_counter = 0
            for x in range(self.size):
                for y in range(self.size):
                    for z in range(self.size):
                        if self.is_edge(x, y, z):
                            variable[x, y, z] = variable_counter
                            variable_counter += 1
                            location[x, y, z] = location_counter
                            location_counter += 1

                            if x in self.boundary and y in self.boundary:
                                rotation[x, y, z] = 0, 1, -1
                            elif x in self.boundary and z in self.boundary:
                                rotation[x, y, z] = 0, -1, 1
                            elif y in self.boundary and z in self.boundary:
                                rotation[x, y, z] = -1, 0, 1

        return variable, location, rotation

    def rotate_cubie(self, rotation, axis1, axis2):
        rotation[axis1], rotation[axis2] = rotation[axis2], rotation[axis1]
        return rotation

    def turn_clockwise(self, face, turns):
        assert face in self.FACES

        index = self.max_index if face in ['B', 'R', 'D'] else self.min_index
        if face in ['B', 'L', 'D']:
            turns = -turns

        rotation_indexes = range(self.size)
        _x = rotation_indexes
        _y = rotation_indexes
        _z = rotation_indexes
        axis1, axis2 = -1, -1

        if face in ['F', 'B']:
            axis1, axis2 = 1, 2
            _x = [index]
        elif face in ['L', 'R']:
            axis1, axis2 = 0, 2
            _y = [index]
        elif face in ['U', 'D']:
            axis1, axis2 = 0, 1
            _z = [index]

        if turns % 2 != 0:
            for x in _x:
                for y in _y:
                    for z in _z:
                        self.rotations[x, y, z] = self.rotate_cubie(
                            self.rotations[x, y, z], axis1, axis2)

        if face in ['F', 'B']:
            self.cube[index, :, :] = numpy.rot90(self.cube[index, :, :], turns)
            self.rotations[index, :, :] = numpy.rot90(self.rotations[index, :, :], turns)
        elif face in ['L', 'R']:
            self.cube[:, index, :] = numpy.rot90(self.cube[:, index, :], turns)
            self.rotations[:, index, :] = numpy.rot90(self.rotations[:, index, :], turns)
        elif face in ['U', 'D']:
            self.cube[:, :, index] = numpy.rot90(self.cube[:, :, index], turns)
            self.rotations[:, :, index] = numpy.rot90(self.rotations[:, :, index], turns)

    def controlled_shuffle(self, scramble):
        scramble = scramble.split(' ')
        for step in scramble:
            if step.strip() == '':
                continue
            face = step[0]
            assert face in self.FACES
            if len(step) == 1:
                turns = 1
            else:
                assert len(step) == 2
                if step[1] == '2':
                    turns = 2
                else:
                    assert step[1] == '\''
                    turns = 3

            self.turn_clockwise(face, turns)

    def get_position(self, variable):
        for x in range(self.size):
            for y in range(self.size):
                for z in range(self.size):
                    if self.cube[x, y, z] == variable:
                        return int(self.locations[x, y, z])

    def get_rotation(self, variable):
        for x in range(self.size):
            for y in range(self.size):
                for z in range(self.size):
                    if self.cube[x, y, z] == variable:
                        for i in range(self.DIMENSIONS):
                            if self.rotations[x, y, z][i] >= 0:
                                return self.rotations[x, y, z][i]

    def rotate_single_cubie(self, variable):
        for x in range(self.size):
            for y in range(self.size):
                for z in range(self.size):
                    if self.cube[x, y, z] == variable:
                        if self.is_corner(x, y, z):
                            _x, _y, _z = self.rotations[x, y, z]
                            self.rotations[x, y, z] = (_y, _z, _x)
                        elif self.is_edge(x, y, z):
                            for i in range(self.DIMENSIONS):
                                if self.rotations[x, y, z][i] < 0:
                                    tmp = self.rotations[x, y, z][i - 1]
                                    self.rotations[x, y, z][i - 1] = self.rotations[x, y, z][(i + 1) % self.DIMENSIONS]
                                    self.rotations[x, y, z][(i + 1) % self.DIMENSIONS] = tmp
                        return

    def is_corner(self, x, y, z):
        return x in self.boundary and y in self.boundary and z in self.boundary

    def is_edge(self, x, y, z):
        return (x in self.boundary) + (y in self.boundary) + (z in self.boundary) == 2

    def location_on_face(self, var_location, face, key):
        index = self.max_index if face in ['B', 'R', 'D'] else self.min_index
        for x in range(self.size):
            for y in range(self.size):
                for z in range(self.size):
                    if self.locations[x, y, z] == var_location:
                        if key == "corner" and self.is_corner(x, y, z):
                            return (face in ['F', 'B'] and x == index) or \
                                   (face in ['L', 'R'] and y == index) or \
                                   (face in ['U', 'D'] and z == index)
                        elif key == "edge" and self.is_edge(x, y, z):
                            return (face in ['F', 'B'] and x == index) or \
                                   (face in ['L', 'R'] and y == index) or \
                                   (face in ['U', 'D'] and z == index)
