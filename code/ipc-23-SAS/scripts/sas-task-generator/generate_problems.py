#!/usr/bin/env python

import os
import shutil
import hashlib


def md5checksum(filepath):
    with open(filepath, 'r') as f:
        content = f.read()
        hash = hashlib.md5(content.encode())
        return hash.hexdigest()


def main():
    filedirectory = "problems/"
    if os.path.exists(filedirectory):
        answer = input(
            f"Directory {filedirectory} already exists. Do you want to overwrite it? (y/N) ").lower()
        if answer == "yes" or answer == "y":
            shutil.rmtree(filedirectory, ignore_errors=True)
        else:
            print(f"Abort. Permission denied to overwrite directory {filedirectory}.")
            exit(0)
    os.system(f"mkdir {filedirectory}")

    scrambledirectory = "scramble/"
    os.system(f"mkdir {scrambledirectory}")

    hash_table = []
    filepath = "files/rubiks_cube.sas"
    scramblepath = "files/rubiks_cube.scramble"

    max_turns = 20
    samples = 10
    for i in range(max_turns):
        for j in range(samples):
            turns = i + 1
            print(f"Generating problem {j} with {turns} turns.")
            name = f"s3-t{turns}-p{j}"
            while True:
                scramblefile = f"{scrambledirectory}{name}.scramble"
                call = f"python build.py -c -t {turns}"
                if os.path.exists(scramblefile):
                    call += f" -p {scramblefile}"
                os.system(call)
                hash = md5checksum(filepath)
                if hash not in hash_table:
                    hash_table.append(hash)
                    break
                else:
                    os.remove(filepath)

            filename = f"{name}.sas"
            os.system(f"mv {filepath} {filedirectory}{filename}")
            if not os.path.exists(scramblefile):
                os.system(f"mv {scramblepath} {scramblefile}")


if __name__ == "__main__":
    main()
