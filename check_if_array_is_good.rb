# @param {Integer[]} nums
# @return {Boolean}
def is_good(nums)
    return false if nums.length != nums.max + 1
    nums = nums.sort
    return false if nums[nums.length-1] != nums.max || nums[nums.length-2] != nums.max
    for i in 0..nums.length-2 do
        return false if nums[i] != i+1
    end
    true
end
