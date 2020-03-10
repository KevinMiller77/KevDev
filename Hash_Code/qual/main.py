from operator import itemgetter
import math

def in_and_split_to_int(in_file):
    temp = in_file.readline()
    temp = temp.split()
    temp2 = []
    for i in temp:
        temp2.append(int(i))

    return temp2

def total_days_for_lib(libs):
    for i in libs:
        times = []
        S = i[1]
        Bt = i[0]
        Bd = i[2]

        i.append(i[5] / (S + Bt / Bd))

def find_lib_ordering_order(libs, scores):
    for lib in libs:
        pos_score = 0
        for book in lib[4]:
            pos_score = pos_score + scores[book]
        lib.append(pos_score)
    
    #max_wait is lib number not highest wait time
    max_wait = 0
    total_days_for_lib(libs)
    print("Sorting")
    libs.sort(key=lambda x: x[1])
    print("Sorted")
        

def remove_from_list(lib, val):
    for i in range(0, len(lib) - 1):
        if (lib[i] == val):
            del lib[i]
        

def erase_overlap(libs):
    for lib_a in libs:
        for lib_b in libs:
            if lib_a == lib_b:
                continue
            for book_a in lib_a[4]:
                for book_b in lib_b[4]:
                    if book_a == book_b:
                        if (len(lib_a[4]) > len(lib_b[4])):
                            remove_from_list(lib_a[4], book_a)
                        else:
                            remove_from_list(lib_b[4], book_b)

def main():
    in_file_name = input()
    in_file = open(in_file_name)
    out_file_name = in_file_name[:-3] + "out"
    out_file = open(out_file_name, "w")

    lib_info = in_and_split_to_int(in_file)
    num_books, num_libs, num_days = int(lib_info[0]), int(lib_info[1]), int(lib_info[2])
    scores = in_and_split_to_int(in_file)

    #each lib has #books, #days_singup, #Ship per day, #books_to_use, [books it has], pos_score 
    libraries = []
    for i in range(0, num_libs):
        meta_inf = []
        temp = in_and_split_to_int(in_file)
        meta_inf.append(int(temp[0])), meta_inf.append(int(temp[1])), meta_inf.append(int(temp[2])), meta_inf.append(int(i))
        
        books_lib_has = in_and_split_to_int(in_file)
        meta_inf.append(books_lib_has)

        libraries.append(meta_inf)
    
    erase_overlap(libraries)
    find_lib_ordering_order(libraries, scores)
    #print(libraries)
    out_file.write("{}\n".format(num_libs))
    out_file.flush()
    for lib in libraries:
        out_file.write("{} {}\n".format(lib[3], len(lib[4])))
        out_file.flush()
        for book in lib[4]:
            out_file.write("{} ".format(book))
        out_file.write("\n")
        out_file.flush()

if __name__ == "__main__":
    main()