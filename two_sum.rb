def two_sum(nums, target)
    h = nums.map.with_index { | value, index |  [value, index] }.to_h   
    for i in 0..nums.length-1 do
        complement = target-nums[i]
        return [i, h[complement]] if !h[complement].nil? && h[complement] != i
    end
end
