import glob 
import pickle as pkl
# Clemens probem_7_0.pddl
# pddl_init = '''
# (cube1 W B R)
# (cube2 B O W)
# (cube3 Y G O)
# (cube4 W R G)
# (cube5 G Y R)
# (cube6 G O W)
# (cube7 B Y R)
# (cube8 Y O B)
# (edge12 Y O)
# (edge13 Y B)
# (edge15 W B)
# (edge24 B R)
# (edge26 G O)
# (edge34 R G)
# (edge37 Y G)
# (edge48 R Y)
# (edge56 W R)
# (edge57 W G)
# (edge68 O W)
# (edge78 O B)
# '''

# pddl_goal = '''
# (cube1 R W B)
# (cube2 O W B)
# (cube3 R Y B)
# (cube4 O Y B)
# (cube5 R W G)
# (cube6 O W G)
# (cube7 R Y G)
# (cube8 O Y G)

# (edge12 W B)
# (edge24 O B)
# (edge34 Y B)
# (edge13 R B)

# (edge15 R W)
# (edge26 O W)
# (edge48 O Y)
# (edge37 R Y)

# (edge56 W G)
# (edge68 O G)
# (edge78 Y G)
# (edge57 R G)
# '''

input_seq = [x for x in range(0, 54)]

map_dict = {
    'cube1': {('red', 'white', 'blue'): (35, 8, 38)},
    'cube2': {('orange', 'white', 'blue'): (20, 2, 44)},
    'cube3': {('red', 'yellow', 'blue'): (33, 15, 36)},
    'cube4': {('orange', 'yellow', 'blue'): (18, 9, 42)},
    'cube5': {('red', 'white', 'green'): (29, 6, 53)},
    'cube6': {('orange', 'white', 'green'): (26, 0, 47)},
    'cube7': {('red', 'yellow', 'green'): (27, 17, 51)},
    'cube8': {('orange', 'yellow', 'green'): (24, 11, 45)},
    'edge12': {('white', 'blue'): (5, 41)},
    'edge24': {('orange', 'blue'): (19, 43)},
    'edge34': {('yellow', 'blue'): (12, 39)},
    'edge13': {('red', 'blue'): (34, 37)},
    'edge15': {('red', 'white'): (32, 7)},
    'edge26': {('orange', 'white'): (23, 1)},
    'edge48': {('orange', 'yellow'): (21, 10)},
    'edge37': {('red', 'yellow'): (30, 16)},
    'edge56': {('white', 'green'): (3, 50)},
    'edge68': {('orange', 'green'): (25, 46)},
    'edge78': {('yellow', 'green'): (14, 48)},
    'edge57': {('red', 'green'): (28, 52)},
}

# problem_files = glob.glob('clemens_problem_files/*.pddl')
problem_files = glob.glob('../ipc-23-PDDL/dataset/problems/*.pddl')
# for i in problem_files:
#     print(i)
# exit()
mapped_problem_list = []
for file in problem_files:
    # print(file)
    if 'p01.pddl' not in file:
        continue

    # read file and get content between (:init and (:goal
    with open(file, 'r') as f:
        content = f.read()
    pddl_init = '\n'.join([string.strip() for string in content.split('(:init')[1].split('(:goal')[0].split('\n') if len(string.strip()) > 1])
    # print(pddl_init)
    # exit()
    initial_state_dict = {}
    for item in pddl_init.split('\n'):
        if item:
            item = item.replace('(', '').replace(')', '')
            item = item.split(' ')
            initial_state_dict[item[0]] = tuple(item[1:])

    # print(initial_state_dict)
    # exit()
    print('Goal State: ',input_seq)
    input_seq = [x for x in range(0, 54)]
    for key, value in initial_state_dict.items():
        seq_num = []
        for key2, item in map_dict.items():
            for value2, item2 in item.items():
                if set(value).issubset(value2) and len(value) == len(value2):
                    print(value, value2, item2)
                    for i in value:
                        seq_num.append(item2[value2.index(i)])
                    print(seq_num)
        
        for temp_item, temp_value in map_dict[key].items():
            for i in range(len(temp_value)):
                input_seq[temp_value[i]] = seq_num[i]
    mapped_problem_list.append(input_seq)
    print('Problem State:', input_seq)

# from pprint import pprint
# pprint(mapped_problem_list)
print(len(mapped_problem_list))
# # pkl.dump(mapped_problem_list,open("mapped_deepcubea/clemens_problem_files.pkl","wb"))
# pkl.dump(mapped_problem_list,open("mapped_deepcubea/problem_files.pkl","wb"))

# pkl.dump(mapped_problem_list,open("ipc-23-mapped-dataset/ipc-23-problem_files.pkl","wb"))
