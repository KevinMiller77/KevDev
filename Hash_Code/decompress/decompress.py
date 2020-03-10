
def decompress(compressed_string):
    if type(compressed_string) is not str:
        print("Whaddaya DOin")
        return -1
    
    #Get times to repeat
    digit_terminator = int(compressed_string.find('['))
    times_to_repeat = int(compressed_string[0:digit_terminator])

    next_open_bracket = compressed_string.find('[', digit_terminator + 1)
    #If there are no more brackets, return the string 
    if (next_open_bracket == -1):
        return compressed_string[digit_terminator + 1:-1] * times_to_repeat       
    #Else, recurse
    else:
        #Grab the number before the bracket
        next_open_bracket = next_open_bracket - 1
        cur_char = compressed_string[next_open_bracket]
        while (cur_char > '0' and cur_char < '9'):
            next_open_bracket = next_open_bracket - 1
            cur_char = compressed_string[next_open_bracket]
        #Recurse replacing the current string with the decompressed one
        recursing_string = compressed_string[next_open_bracket + 1:compressed_string.rfind(']') - 1]
        decompressed_inner_string = decompress(recursing_string)
        return (compressed_string.replace(recursing_string, decompressed_inner_string)[digit_terminator + 1:-1]) * times_to_repeat

def main():
    #Get input, might change to file later
    compressed_string = input()

    #decompress input
    decompressed_string = decompress(compressed_string)
    if decompressed_string == -1:
        print("Could not decompress string. Terminating program")
        return -1

    print("String decompressed! Result: \n", end="")
    print(decompressed_string)


if __name__ == "__main__":
    main()