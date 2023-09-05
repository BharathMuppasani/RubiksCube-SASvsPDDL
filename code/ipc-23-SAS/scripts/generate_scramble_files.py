import os

plans_path = '../dataset/plans/'
scramble_path = '../dataset/scramble/'

if not os.path.exists(scramble_path):
    os.makedirs(scramble_path)

for filename in sorted(os.listdir(plans_path)):
    with open(plans_path + filename, 'r') as f:
        file_content = f.readlines()

    plan = [x.strip('()\n') for x in file_content if ';' not in x]   
    scramble_steps = []
    for item in plan:
        if 'rev' in item:
            scramble_steps.append(item.replace('rev', ''))
        else:
            scramble_steps.append(item + "'")

    scramble_steps = scramble_steps[::-1]

    with open(scramble_path + filename.replace('.plan', '.scramble'), 'w') as f:
        f.write(' '.join(scramble_steps))