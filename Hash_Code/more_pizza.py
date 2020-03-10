#Input is as follows:

#M N 
#S0 S1 S2 ... SN
# 
# M = max slices
# N = Num of pizza types
# SX = number of slices in pizza type X
# importing the sys module 
import sys 
  
# the setrecursionlimit function is 
# used to modify the default recursion 
# limit set by python. Using this,  
# we can increase the recursion limit 
# to satisfy our needs 
  
sys.setrecursionlimit(10**8) 

max_found = 0
path_there = []

def subset_sum(numbers, target, partial=[]):
    global max_found
    global path_there
    s = sum(partial)

    # check if the partial sum is equals to target
    if s <= target and s > max_found:
        max_found = s
        path_there = partial
        print("cur_max: " + str(s))
    if max_found >= target:
        return

    for i in range(len(numbers)):
        n = int(numbers[i])
        remaining = numbers[i+1:]
        subset_sum(remaining, target, partial + [n]) 


def main():
    global max_found
    global path_there

    file_path = input()
    file = open(file_path)
    #Retrieve store info
    order_info = file.readline()
    order_info_split = order_info.split()
    
    M = int(order_info_split[0])
    N = int(order_info_split[1])

    raw_pizzas = file.readline()
    pizza_types = raw_pizzas.split()
    pizza_types.reverse()

    top_sum = 0
    top_path = []

    #print("Searching, may take awhile")
    subset_sum(pizza_types, M)

    print(len(path_there))
    out = ""

    for i in path_there:
        out = out + str(i) + " "
    print(out)

if (__name__ == "__main__"):
    main()
