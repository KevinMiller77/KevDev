import sys 
sys.setrecursionlimit(10**9) 

max_found = 0
path_there = []

def subset_sum(numbers, target, partial=[], indicies=[]):
    global max_found
    global path_there
    s = sum(partial)

    # check if the partial sum is equals to target
    if s <= target and s > max_found:
        max_found = s
        path_there = indicies
        print("cur_max: " + str(s))
        print("Path there: {}".format(indicies))
    if max_found >= target:
        return

    for i in range(len(numbers)):
        if indicies.__contains__(i):
            continue
        #print(i)
        n = int(numbers[i])
        remaining = numbers[i+1:]
        subset_sum(remaining, target, partial + [n], indicies + [i]) 


def main():
    global max_found
    global path_there

    file_path = input()
    in_file = open(file_path)
    #Retrieve store info
    order_info = in_file.readline()
    order_info_split = order_info.split()
    
    M = int(order_info_split[0])
    N = int(order_info_split[1])

    raw_pizzas = in_file.readline()
    pizza_types = raw_pizzas.split()
    pizza_types.reverse()

    top_sum = 0
    top_path = []

    #print("Searching, may take awhile")
    subset_sum(pizza_types, M)

    print(len(path_there))
    out = ""

    for i in path_there:
        if (i == path_there[len(path_there) - 1]):
            out = out + str(i) + " "
            break
        out = out + str(len(pizza_types) - 2 - i) + " "
    print(out)

if (__name__ == "__main__"):
    main()
