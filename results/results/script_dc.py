import glob
import os
import json

current_dir = os.getcwd()

# get the folders in the current directory and save them to dicktionary keys
folders = glob.glob('DeepCubeA')

# create a dictionary with the folder names as keys and empty lists as values
results = {}

mapping_list = ['Urev', 'U', 'Drev', 'D', 'Lrev', 'L', 'Rrev', 'R', 'Brev', 'B', 'Frev', 'F']

def check_not_optimal(face, last_face, second_to_last_face):
    if face == last_face:
        return True
    if face == second_to_last_face:
        return (face == 'F' and last_face == 'B') or (
                face == 'B' and last_face == 'F') or (
                face == 'L' and last_face == 'R') or (
                face == 'R' and last_face == 'L') or (
                face == 'U' and last_face == 'D') or (
                face == 'D' and last_face == 'U')
    return False

def preprocess_plan_file(file):

    with open(file, 'r') as f:
        plan_list = f.read()

    plan_list = plan_list.split('Actions: ')[-1].replace('\\n','').replace("'", '')
    plan_list = plan_list.split(', ')
    plan_list = [mapping_list[int(i)] for i in plan_list]
    # plan_list = [line.replace('(', '').replace(')', '').strip().capitalize() for line in plan_list if ';' not in line]

    return plan_list

for key in folders:
    results[key] = {folder.split('/')[-1]: {} for folder in glob.glob(key + '/*')}

for key in results.keys():
    # get the files in the current directory
    for sub_key in results[key].keys():
        files = glob.glob(f'{key}/{sub_key}/output_*.txt')
        if len(files) == 200:

            plan_files = glob.glob(f'{key}/{sub_key}/output_*.txt')

            optimal_count = 0
            average_plan_length = 0

            for plan_file in plan_files:
                plan_list = preprocess_plan_file(plan_file)

                average_plan_length += len(plan_list)
                if len(plan_list) == 1:
                    optimal_count += 1
                elif len(plan_list) == 2:
                    if check_not_optimal(plan_list[0], plan_list[1], None) == False:
                        optimal_count += 1
                else:
                    # print(plan_list)
                    s_last = plan_list[0]
                    last = plan_list[1]
                    flag = True
                    for i in range(2, len(plan_list)):
                        current = plan_list[i]
                        # print(s_last, last, current, flag)
                        if check_not_optimal(current, last, s_last):
                            flag = False
                        s_last = last
                        last = current

                        if flag == False:
                            break

                    if flag:
                        optimal_count += 1
            print(key, sub_key, optimal_count)
            results[key][sub_key]['optimal_plans'] = optimal_count
            # results[key][sub_key]['average_plan_length'] = average_plan_length / len(plan_files)



print(json.dumps(results, indent=4))

# import pandas as pd
# columns = list(results.keys())
# df = pd.DataFrame(columns=columns, data = None)
# rows = list(results[columns[0]].keys())
# rows = rows + ["goal_count"]
# df['heuristic'] = rows 
# df.set_index("heuristic",inplace=True)
# #print(df)

# for val in columns:
#     for row in rows:
#         if row in results[val].keys():
#             df.loc[row, val] = results[val][row]
#         else:
#             df.loc[row, val] = "N/A"

# import pandas as pd

# # Get the list of columns from the results dictionary
# columns = list(results.keys())

# # Initialize the DataFrame with empty data
# df = pd.DataFrame(columns=columns)

# # Get the list of rows from the first column of the results dictionary
# rows = list(results[columns[0]].keys())

# # Add a new row to the list called "goal_count"
# rows.append("goal_count")

# # Set the index of the DataFrame to the "heuristic" column
# df["heuristic"] = rows
# df.set_index("heuristic", inplace=True)

# def to_string(data):
#     val_ret = ""
#     for key in data:
#         val_ret += f"{key}: {data[key]} "

#     return val_ret
# # Loop over the columns and rows and add the data to the DataFrame
# for val in columns:
#     for row in rows:
#         if row in results[val]:
#             data = results[val][row]
#             if isinstance(data, list):
#                 df.at[row, val] = "N/A"
#             else:
#                 df.at[row, val] = to_string(data)
#         else:
#             df.at[row, val] = "N/A"

# # Print the first row of the DataFrame
# df.to_csv("results.csv")
# print(df)

