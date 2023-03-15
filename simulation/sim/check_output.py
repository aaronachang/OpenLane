import sys

test_type = sys.argv[1]

print("Checking serializer output for "+test_type+"...")
output_file = test_type + ".txt"
file = open(output_file, 'r')
lines = file.readlines()
match = True
line_num = 1
for line in lines:
    tokens = line.split()
    if tokens[0] not in tokens[1]:
        match = False
        break
    line_num = line_num+1

if match:
    print("Serializer output matches input!")
else:
    print("Serializer output doesn't match input. Check line "+str(line_num)+" in "+output_file)
