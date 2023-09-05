import os
import sys

scramble_path = '../dataset/scramble/'
scramble_files = sorted(os.listdir(scramble_path))


###################### To generate SAS files for 12 moves ######################

sas_files_path = '../dataset/sas-problems-12/'

if not os.path.exists(sas_files_path):
    os.makedirs(sas_files_path)

sas_file_name = 'rubiks_cube.sas'
scramble_file_name = 'rubiks_cube.scramble'
for filename in scramble_files:
    file_path = scramble_path + filename

    # ./build.py -p <path-to-scramble-file> [-d <directory-for-output-files>] -t 0
    os.system('python sas-task-generator/build.py -c -q -p ' + file_path + ' -d ' + sas_files_path + ' -t 0')
    os.system('mv ' + sas_files_path + sas_file_name + ' ' + sas_files_path + filename.replace('.scramble', '.sas'))
    os.system('mv ' + sas_files_path + scramble_file_name + ' ' + sas_files_path + filename)


###################### To generate SAS files for 18 moves ######################

# sas_files_path = '../dataset/sas-problems-18/'

# if not os.path.exists(sas_files_path):
#     os.makedirs(sas_files_path)

# sas_file_name = 'rubiks_cube.sas'
# scramble_file_name = 'rubiks_cube.scramble'
# for filename in scramble_files:
#     file_path = scramble_path + filename

#     # ./build.py -p <path-to-scramble-file> [-d <directory-for-output-files>] -t 0
#     os.system('python sas-task-generator/build.py -c -p ' + file_path + ' -d ' + sas_files_path + ' -t 0')
#     os.system('mv ' + sas_files_path + sas_file_name + ' ' + sas_files_path + filename.replace('.scramble', '.sas'))
#     os.system('mv ' + sas_files_path + scramble_file_name + ' ' + sas_files_path + filename)
