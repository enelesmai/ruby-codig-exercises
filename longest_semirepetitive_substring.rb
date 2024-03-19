# @param {String} s
# @return {Integer}
def longest_semi_repetitive_substring(s)
    result = s.length>1 ? 0:1
    for i in 0..s.length-1 do
        semi_string = s[i]
        for j in (i+1)..s.length-1 do
            semi_string += s[j]
            if (is_valid(semi_string))
                result = [result, semi_string.length].max
            end
        end
    end
    result
end

def is_valid(semi_string)
    pair=0
    for i in 1..semi_string.length-1 do
        pair+= 1 if (semi_string[i] == semi_string[i-1])
        return false if pair > 1
    end 
    return true
end
