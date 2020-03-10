def main():
    T = int(input())
    
    for cur_test in range(0, T):
        info = input().split()
        P = int(info[0])
        Q = int(info[1])
        #TODO: add in a check for Q

        cart_x = 0
        cart_y = 0

        hor_activity = []
        ver_activity = []
        for i in range (0, Q):
            hor_activity.append(0)
            ver_activity.append(0)

        for person in range(0, P):
            person_info = input()
            person_info = person_info.split()
            if (person_info[2] == "N"):
                next_y = int(person_info[1]) + 1
                if (next_y > cart_y and next_y <= Q):
                    ver_activity[next_y] = ver_activity[next_y] + 1
            elif (person_info[2] == "S"):
                next_y = int(person_info[1]) - 1
                if (next_y < cart_y and next_y >= 0):
                    ver_activity[next_y] = ver_activity[next_y] + 1
            elif (person_info[2] == "E"):
                next_x = int(person_info[0]) + 1
                if (next_x > cart_x and next_x <= Q):
                    hor_activity[next_x] = hor_activity[next_x] + 1
            else:
                next_x = int(person_info[0]) - 1
                if (next_x < cart_x and next_x >= 0):
                    hor_activity[next_x] = hor_activity[next_x] + 1

        x_max = max(hor_activity)
        y_max = max(ver_activity)
        if (x_max != 0):
            cart_x = hor_activity.index(x_max)
        if (y_max != 0):
            cart_y = ver_activity.index(y_max)

        print("Case #" + str(cur_test + 1) + ": " + str(cart_x) + " " + str(cart_y))




main()