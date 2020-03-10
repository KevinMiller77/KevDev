import sys

def __main():
    params = input()
    params_split = params.split()
    T =  params_split[0] #Number of test cases
    N =  params_split[1] #Number of nights
    M =  params_split[2] #Max gophers

    cases_tested = 0
    while (cases_tested < int(T)):
        total_spun = 0
        for i in range(0, int(N)):
            print("18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18", flush=True)
            res = input()
            if (res == "-1"):
                sys.exit()
            res_list = res.split()
            nightly_spins = 0
            for num in res_list:
                nightly_spins = nightly_spins + int(num)
            total_spun = total_spun + nightly_spins
        avg = int(total_spun) / int(N)
        print(str(int(min(avg, int(M)))), flush = True)        
        cases_tested = cases_tested + 1
        ans = input()
        if (ans == "-1"):
            break
        
__main()