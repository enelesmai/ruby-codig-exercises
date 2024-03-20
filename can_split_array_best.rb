# @param {Integer[]} nums
# @param {Integer} m
# @return {Boolean}
def can_split_array(nums, m)
    n = nums.length
    return true if n <= 2
    for i in 0..n-2
        if nums[i]+nums[i+1] >= m
            return true
        end
    end
    return false
end
