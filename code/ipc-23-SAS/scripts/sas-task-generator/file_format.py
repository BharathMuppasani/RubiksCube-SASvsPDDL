import re


class Format:
    def __init__(self, cube, goal_cube, moves, file):
        self.cube = cube
        self.goal_cube = goal_cube
        self.problem = cube.problem
        self.moves = moves
        self.file = file
        self.variable_counter = 0
        self.mutex_counter = 0
        self.operator_counter = 0

    def write(self):
        self.write_version()
        self.write_metric()
        self.write_variables()
        self.write_mutexes()
        self.write_initial_state()
        self.write_goal_state()
        self.write_operators()
        self.write_axioms()

        print(f"Built file successfully: {self.file.name}")

    def write_version(self):
        self.file.write("begin_version\n3\nend_version\n")

    def write_metric(self):
        self.file.write("begin_metric\n0\nend_metric\n")

    def write_variables(self):
        number_of_variables = self.get_number_of_variables()
        self.file.write(f"{number_of_variables}\n")

        for key in self.cube.cubies.keys():
            pieces, rotations = self.cube.cubies[key]
            for j in range(pieces):
                name = key
                self.write_variable(name, j, (pieces, rotations))

        assert number_of_variables == self.variable_counter

    def get_number_of_variables(self):
        count = 0
        for key in self.cube.cubies.keys():
            count += self.get_number_of_variables_of_cubie_type(key)
        return count

    def get_number_of_variables_of_cubie_type(self, cubie_type):
        raise NotImplementedError("Subclass must implement abstract method")

    def write_variable(self, name, index, options):
        raise NotImplementedError("Subclass must implement abstract method")

    def write_mutexes(self):
        number_of_mutexes = self.get_number_of_mutexes()
        self.file.write(f"{number_of_mutexes}\n")

        start_index = 0
        for key in self.cube.cubies.keys():
            start_index = self.write_mutex_groups(key, start_index)

        assert number_of_mutexes == self.mutex_counter

    def get_number_of_mutexes(self):
        count = 0
        for key in self.cube.cubies.keys():
            count += self.cube.cubies[key][0]
        return count

    def write_mutex_groups(self, cubie_type, start):
        raise NotImplementedError("Subclass must implement abstract method")

    def write_initial_state(self):
        filename = self.file.name
        filename = re.sub(".sas$", ".scramble", filename)
        file = open(filename, 'w')
        file.write(f"{self.problem}\n")

        state = self.render_initial_state()
        self.file.write(f"begin_state\n{state}end_state\n")

    def render_initial_state(self):
        raise NotImplementedError("Subclass must implement abstract method")

    def write_goal_state(self):
        goal = self.render_goal_state()
        self.file.write(f"begin_goal\n{self.variable_counter}\n{goal}end_goal\n")

    def render_goal_state(self):
        raise NotImplementedError("Subclass must implement abstract method")

    def write_operators(self):
        operators = self.calculate_number_of_operators()
        self.file.write(f"{operators}\n")
        for face in self.cube.FACES:
            for move in self.moves:
                number_of_effects = self.calculate_number_of_effects()
                self.write_operator(number_of_effects, face, move)

    def calculate_number_of_operators(self):
        return len(self.cube.FACES) * len(self.moves)

    def write_operator(self, effects, face, move):
        self.operator_counter += 1
        self.file.write(self.render_operator(effects, face, move))

    def render_operator(self, effects, face, move):
        raise NotImplementedError("Subclass must implement abstract method")

    def calculate_number_of_effects(self):
        count = 0
        for key in self.cube.cubies.keys():
            additional_effects = self.cube.cubies[key][0] ** 2
            if key == "corner":
                additional_effects //= 2
            else:
                assert key == "edge"
                additional_effects //= 3
            additional_effects *= self.calculate_effects_factor(key)
            count += additional_effects
        return count

    def calculate_effects_factor(self, cubie_type):
        raise NotImplementedError("Subclass must implement abstract method")

    def write_axioms(self):
        self.file.write("0\n")  # no axioms


class Separated(Format):
    def get_number_of_variables_of_cubie_type(self, cubie_type):
        return self.cube.cubies[cubie_type][0] * (
                1 + (self.cube.cubies[cubie_type][1] > 1))

    def write_variable(self, name, index, options):
        self.variable_counter += 1
        self.file.write(self.render_variable(False, name, index, options[0]))
        if options[1] > 1:
            self.variable_counter += 1
            self.file.write(self.render_variable(True, name, index, options[1]))

    @staticmethod
    def render_variable(rotation, cubie_type, index, options):
        index = str(index)

        string = "begin_variable\n"
        if rotation:
            string += "rotation_"
        string += f"{cubie_type}_{index}\n-1\n{options}\n"
        for i in range(options):
            string += "Atom "
            if rotation:
                string += "rotated-towards("
            else:
                string += "at("
            string += f"cubie_{cubie_type}_{index}, "
            if rotation:
                string += "direction_"
            else:
                string += f"location_{cubie_type}_"
            string += f"{i})\n"
        string += "end_variable\n"

        return string

    def write_mutex_groups(self, cubie_type, start):
        pieces, rotations = self.cube.cubies[cubie_type]
        increment = (rotations > 1) + 1
        for j in range(pieces):
            self.mutex_counter += 1
            self.file.write(self.render_mutex_group(pieces, j, start, increment))
        start += pieces * increment
        return start

    @staticmethod
    def render_mutex_group(number_of_cubies, position, start, increment):
        string = f"begin_mutex_group\n{number_of_cubies}\n"
        for i in range(number_of_cubies):
            string += str(increment * i + start) + f" {position}\n"
        string += "end_mutex_group\n"

        return string

    def render_initial_state(self):
        string = ''
        count = 0
        for key in self.cube.cubies.keys():
            pieces, rotations = self.cube.cubies[key]
            for j in range(pieces):
                string += f"{self.cube.get_position(count)}\n"
                if rotations > 1:
                    string += f"{self.cube.get_rotation(count)}\n"
                count += 1
        return string

    def render_goal_state(self):
        string = ''
        count = 0
        for key in self.cube.cubies.keys():
            pieces, rotations = self.cube.cubies[key]
            for j in range(pieces):
                var = count // (1 + (rotations > 1))
                val = self.goal_cube.get_position(var)
                string += f"{count} {val}\n"
                count += 1
                if rotations > 1:
                    val = self.goal_cube.get_rotation(var)
                    string += f"{count} {val}\n"
                    count += 1
        return string

    def calculate_effects_factor(self, cubie_type):
        return 1 + self.cube.cubies[cubie_type][1] * (
                self.cube.cubies[cubie_type][1] > 1)

    def render_operator(self, effects, face, move):
        extensions = ['', '2', '\'']
        string = f"begin_operator\n{face}{extensions[move - 1]}\n0\n{effects}\n"

        effect_counter = 0
        variable_counter = 0
        cube_variable_counter = 0
        for key in self.cube.cubies.keys():
            pieces, rotations = self.cube.cubies[key]
            step = 1 + (rotations > 1)
            for position in range(pieces):
                if self.goal_cube.location_on_face(position, face, key):
                    cube_variable = cube_variable_counter + position
                    self.goal_cube.turn_clockwise(face, move)
                    new_position = self.goal_cube.get_position(cube_variable)
                    self.goal_cube.turn_clockwise(face, -move)

                    for piece in range(pieces):
                        var_sas = variable_counter + step * piece

                        effect_counter += 1
                        string += f"1 {var_sas} {position} {var_sas} -1 {new_position}\n"

                        for rotation in range(rotations * (rotations > 1)):
                            effect_counter += 1
                            var_sas_2 = var_sas + 1
                            string += f"2 {var_sas} {position} {var_sas_2} "
                            rotation_value = self.goal_cube.get_rotation(cube_variable)
                            string += f"{rotation_value} {var_sas_2} -1 "
                            self.goal_cube.turn_clockwise(face, move)
                            new_rotation_value = self.goal_cube.get_rotation(cube_variable)
                            string += f"{new_rotation_value}\n"
                            self.goal_cube.turn_clockwise(face, -move)
                            self.goal_cube.rotate_single_cubie(cube_variable)
            variable_counter += step * pieces
            cube_variable_counter += pieces
        string += "1\nend_operator\n"

        assert effect_counter == effects
        return string


class Combined(Format):
    def get_number_of_variables_of_cubie_type(self, cubie_type):
        return self.cube.cubies[cubie_type][0]

    def write_variable(self, cubie_type, index, options):
        self.variable_counter += 1
        self.file.write(self.render_variable(cubie_type, index, options))

    @staticmethod
    def render_variable(cubie_type, index, options):
        index = str(index)

        string = "begin_variable\n"
        string += f"{cubie_type}_{index}\n"
        string += str(-1) + '\n'
        opts = options[0] * options[1]
        string += str(opts) + '\n'
        for i in range(opts):
            string += (f"Atom at_and_rotated-towards(cubie_{cubie_type}_{index}, " +
                       f"location_{i // options[1]}, directions_{i % options[1]})\n")
        string += "end_variable\n"

        return string

    def write_mutex_groups(self, cubie_type, start):
        pieces, rotations = self.cube.cubies[cubie_type]
        for j in range(pieces):
            self.mutex_counter += 1
            self.file.write(self.render_mutex_group(pieces, rotations, j, start))
        return start + pieces

    @staticmethod
    def render_mutex_group(pieces, rotations, position, start):
        string = f"begin_mutex_group\n{pieces * rotations}\n"
        for i in range(pieces):
            for j in range(rotations):
                string += f"{i + start} {position * rotations + j}\n"
        string += "end_mutex_group\n"

        return string

    def render_initial_state(self):
        count = 0
        string = ""
        for key in self.cube.cubies.keys():
            pieces, rotations = self.cube.cubies[key]
            for i in range(pieces):
                pos = self.cube.get_position(count)
                rot = self.cube.get_rotation(count)
                string += f"{pos * rotations + rot}\n"
                count += 1
        return string

    def render_goal_state(self):
        string = ""
        count = 0
        for key in self.cube.cubies.keys():
            pieces, rotations = self.cube.cubies[key]
            for i in range(pieces):
                pos = self.goal_cube.get_position(count)
                rot = self.goal_cube.get_rotation(count)
                string += f"{count} {pos * rotations + rot}\n"
                count += 1
        return string

    def calculate_effects_factor(self, cubie_type):
        return self.cube.cubies[cubie_type][1]

    def render_operator(self, effects, face, move):
        extensions = ['', '2', '\'']
        string = f"begin_operator\n{face}{extensions[move - 1]}\n0\n{effects}\n"

        effect_counter = 0
        variable_counter = 0
        for key in self.cube.cubies.keys():
            pieces, rotations = self.cube.cubies[key]
            for position in range(pieces):
                if self.goal_cube.location_on_face(position, face, key):
                    variable = variable_counter + position
                    for piece in range(pieces):
                        for rotation in range(rotations):
                            var_sas = variable_counter + piece

                            effect_counter += 1
                            var = position * rotations + self.goal_cube.get_rotation(variable)
                            string += f"1 {var_sas} {var} {var_sas} -1 "
                            self.goal_cube.turn_clockwise(face, move)
                            new_position = self.goal_cube.get_position(variable)
                            var = new_position * rotations + self.goal_cube.get_rotation(variable)
                            string += f"{var}\n"
                            self.goal_cube.turn_clockwise(face, -move)
                            self.goal_cube.rotate_single_cubie(variable)
            variable_counter += pieces
        string += "1\nend_operator\n"

        assert effect_counter == effects
        return string
