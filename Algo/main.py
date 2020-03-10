import math


def main():
    nums = [30, 1, 2, 4, 4, 5, 9, 20, 21, 27]

    # Find log2 of the length of nums
    max_num_splits = math.ceil(math.log2(len(nums)))

    # Two indicies for low and high binary search
    cur_idx_low = int(len(nums) // 2)
    cur_idx_high = cur_idx_low

    for split in range(0, max_num_splits):
        # Check if either low or high index found the beginning of the sort
        if (nums[cur_idx_high - 1] > nums[cur_idx_high]):
            return nums[cur_idx_high]
        if (nums[cur_idx_low - 1] > nums[cur_idx_low]):
            return nums[cur_idx_low]

        # If return didn't happen, adjust indexes for next loop
        cur_idx_high = cur_idx_high + int(((len(nums) - 1 - cur_idx_high) / 2))
        cur_idx_low = cur_idx_low - int(cur_idx_low // 2)

    return "Doesnt exist"


if __name__ == "__main__":
    print("Lowest number: {}".format(main()))
