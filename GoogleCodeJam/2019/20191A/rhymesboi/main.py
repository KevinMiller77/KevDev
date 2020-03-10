import sys

def find_match(one, two):
    #print("Testing if " + one + " and " + two + " rhyme...")
    accent = ""
    if (len(one) >= len(two)):
        #print("One >= Two")
        for i in range(0, min(len(two) - 1, 4)):
            if (one[len(one) - i - 1] == two[len(two) - i - 1]):
                if (accent != "" or i == 0): 
                    accent = one[len(one) - i - 1] + accent
    else:
        #print("One < Two")
        for i in range(0, min(len(one) - 1, 4)):
            if (one[len(one) - i - 1] == two[len(two) - i - 1]):
                if (one[len(one) - i - 1] == two[len(two) - i - 1]):
                    if (accent != "" or i == 0):
                        accent = one[len(one) - i - 1] + accent

    #if (accent == ""):
    #    print("did not rhyme")
    #else:
    #    print("Rhyme found with an accent of " + accent[0])    
    
    return accent

def __main__ ():
    T = int(input())

    for test in range(0, T):
        words = {}
        pos_matches = {}
        num_words = int(input())
        for word in range(0, num_words):
            words[word] = input()
            pos_matches[word] = set()
        
        for i in words:
            for j in words:
                if i == j:
                    continue
                pos_matches[i].add(find_match(words[i], words[j]))
            pos_matches[i].discard("")
            print("Pivot: " + str(i) + " set;")
            print(pos_matches[i])


__main__()