#!/usr/bin/env python

import argparse
import os
import random
import shutil

import cube_model
import file_format


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "-s", "--small", help="Use 2x2x2 cube without edge cubies.",
        action="store_true")
    parser.add_argument(
        "-q", "--quarter", help="Only allow quarter turns, no half-turns.",
        action="store_true")
    parser.add_argument(
        "-d", "--dest", type=str,
        help="Puts output files in the specified path.",
        default=(os.getcwd() + "/files"))
    parser.add_argument(
        "-t", "--turns", type=int, required=True,
        help="Define the number of turns to shuffle the cube initially. "
             "This number is ignored if *--problem* is specified.")
    parser.add_argument(
        "-p", "--problem", type=str,
        help="Path to a file containing the maneuver notation to "
             "initialize the cube.", default=None)
    parser.add_argument(
        "-c", "--combine",
        help="Combine position and rotation of each cubie in one variable. "
             "This option is required to obtain a Factored Effect Task.",
        action="store_true")

    return parser.parse_args()


def get_turn_options(args):
    # All rotations of Rubik's Cube can be achieved by rotating
    # clockwise by 90 degrees multiple times. The following numbers
    # indicate how often a face should be rotated to simulate a certain
    # operator.
    if args.quarter:
        # Quarter-turn metric: only quarter turns allowed, either
        # 90 degrees or 270 (= 3 times 90) degrees.
        return [1, 3]
    else:
        # Half-turn metric: additionally allow 180 (= 2 times 90) degree turns.
        return [1, 2, 3]


def moves_could_be_concatenated(face, last_face, second_to_last_face):
    if face == last_face:
        return True
    if face == second_to_last_face:
        return (face == 'F' and last_face == 'B') or (
                face == 'B' and last_face == 'F') or (
                face == 'L' and last_face == 'R') or (
                face == 'R' and last_face == 'L') or (
                face == 'U' and last_face == 'D') or (
                face == 'D' and last_face == 'U')


def sample_init_sequence(args):
    scramble = ""
    last_face = None
    second_to_last_face = None
    turn_indicators = ['', '2', '\'']

    turn_options = get_turn_options(args)
    faces = cube_model.CubeModel.FACES
    for i in range(args.turns):
        face = random.choice(faces)
        while moves_could_be_concatenated(face, last_face, second_to_last_face):
            face = random.choice(faces)
        second_to_last_face = last_face
        last_face = face
        t = random.choice(turn_options)

        scramble += f"{face}{turn_indicators[t - 1]} "
    return scramble


def get_problem(args):
    if args.problem is not None:
        if not os.path.exists(args.problem):
            print("The specified problem file does not exist. "
                  "Generating a random problem instead.")
        else:
            with open(args.problem, "r") as file:
                return file.read()
    return sample_init_sequence(args)


def initialize_sas_file(args, filename="rubiks_cube.sas"):
    dest = args.dest
    os.system("mkdir " + dest)
    if not dest.endswith("/"):
        dest = dest + "/"

    path = dest + filename
    if os.path.exists(path):
        answer = input(
            f"File {path} already exists. Do you want to overwrite it? (y/N) ").lower()
        if answer == "yes" or answer == "y":
            shutil.rmtree(path, ignore_errors=True)
        else:
            print(f"Abort. Permission denied to overwrite file {path}.")
            exit(0)

    return open(path, "w+")


def main():
    args = parse_args()
    turn_options = get_turn_options(args)
    problem = get_problem(args)
    file = initialize_sas_file(args)

    cube = cube_model.CubeModel(args.small, problem=problem)
    goal_cube = cube_model.CubeModel(args.small)

    if args.combine:
        fileformat = file_format.Combined(cube, goal_cube, turn_options, file)
    else:
        fileformat = file_format.Separated(cube, goal_cube, turn_options, file)

    fileformat.write()


if __name__ == "__main__":
    main()
