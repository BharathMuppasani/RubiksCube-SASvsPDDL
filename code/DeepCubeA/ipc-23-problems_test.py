import pickle as pkl
import os 
import numpy as np
import subprocess

df = pkl.load(open('/work/bharath/Rubik_DeepCubeExp/DeepCubeA/ipc-23-problem_files.pkl', 'rb'))
check = pkl.load(open('temp_state_rep.pkl', 'rb'))

count = 0
for i in df:
    count += 1
    final_list = list()
    temp = [check[0]].copy()
    temp[0].colors = np.array(i)
    final_list.append(temp[0])
    pkl.dump(final_list, open('state.pkl', 'wb'))
    out_file_name = '/work/bharath/Rubik_DeepCubeExp/DeepCubeA/ipc-23_test_out/output_' + str(count).zfill(2) + '.txt'

    if os.path.exists(out_file_name):
        print('Output File for count:',count,'already exists')
        continue

    try:
        out = subprocess.check_output('python search_methods/astar.py --states state.pkl --model_dir saved_models/cube3/target/ --env cube3 --weight 0.6 --batch_size 10000 --results_dir /work/bharath/', shell=True, timeout=1800, stderr=subprocess.STDOUT)
    except subprocess.TimeoutExpired:
        out = "Timeout Expired for the current file. Count: " + str(count)
        print(out)

    with open(out_file_name, 'w') as f:
        f.write(str(out))
    f.close()
