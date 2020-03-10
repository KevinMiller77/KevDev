max_found = 0
path_there = []

def subset_sum(numbers, target, partial=[]):
    global max_found
    s = sum(partial)

    # check if the partial sum is equals to target
    if s <= target and s > max_found:
        max_found = s
        path_there = partial
        #print("sum(%s)=%s" % (partial, s))
    if s >= target:
        return  # if we reach the number why bother to continue

    for i in range(len(numbers)):
        n = numbers[i]
        remaining = numbers[i+1:]
        subset_sum(remaining, target, partial + [n]) 

subset_sum([7,12,12,13,14,28,29,29,30,32,32,34,41,45,46,56,61,61,62,63,65,68,76,77,77,92,93,94,97,103,113,114,114,120,135,145,145,149,156,157,160,169,172,179,184,185,189,194,195,195], 4500)

print(len(path_there))

out = ""
for i in path_there:
    out = out + i + " "