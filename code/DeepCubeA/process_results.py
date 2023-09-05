import glob 
import pickle as pkl

mapping_list = ['Urev', 'U', 'Drev', 'D', 'Lrev', 'L', 'Rrev', 'R', 'Brev', 'B', 'Frev', 'F']


# Key: Cube face in PDDL domain, Value: Cube face in DC domain
dc_face_map_dict = {
    'U': 'F',
    'D': 'B',
    'L': 'D',
    'R': 'U',
    'F': 'R',
    'B': 'L',
}

def preprocess_plan_file(file):

    with open(file, 'r') as f:
        plan_list = f.read()

    plan_list = plan_list.split('Actions: ')[-1].replace('\\n','').replace("'", '')
    plan_list = plan_list.split(', ')
    plan_list = [mapping_list[int(i)] for i in plan_list]
    # plan_list = [line.replace('(', '').replace(')', '').strip().capitalize() for line in plan_list if ';' not in line]

    for i in range(len(plan_list)):
        if len(plan_list[i]) == 1:
            plan_list[i] = dc_face_map_dict[plan_list[i][0]]
        else:
            plan_list[i] = dc_face_map_dict[plan_list[i][0]] + plan_list[i][1:]

    return plan_list

# problem_files = glob.glob('clemens_problem_files/*.pddl')
problem_files = glob.glob('../ipc-23-PDDL/dataset/problems/*.pddl')
results_path = 'ipc-23_results_18/'
# for i in problem_files:
#     print(i)
# exit()

for i in range(1,21):
    # output file names are outptu_01, output_02, ... output_20
    output_file_name = 'output_' + str(i).zfill(2) + '.txt'
    plan = preprocess_plan_file(results_path + output_file_name)
    cost = len(plan)

    plan_file_name = problem_files[i-1].split('/')[-1].split('.')[0]+ '.txt'
    with open(results_path + plan_file_name, 'w') as f:
        f.write(';; ' + str(cost) + '\n')
        f.write('\n'.join(['(' + x + ')' for x in plan]))

    