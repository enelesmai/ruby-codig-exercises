# @param {Integer[]} nums
# @param {Integer} m
# @return {Boolean}
def can_split_array(nums, m)
    n = nums.length
    try_right = false
    nums_history = [nums]
    popped=nil
    while !is_length_one(nums)
        selected_side = try_right ? nums[1..nums.length-1] : nums[0..nums.length-2] 
        nums_history.push(selected_side)
        if valid_split(selected_side, m)
            nums = selected_side
            try_right = false
        else
            popped = nums_history.pop
            nums = nums_history.last
            while popped == nums[1..nums.length-1]
                popped = nums_history.pop
                nums = nums_history.last
                return false if nums == nil
            end            
            try_right = true
        end
    end
    nums_history.length == n
end

def valid_split(subarray, m)
    subarray.sum >= m || is_length_one(subarray)
end

def is_length_one(subarray)
    subarray.length == 1
end
