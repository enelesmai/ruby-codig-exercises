# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    letters = []
    longest_substring = ""
    index_start = 0
    i = index_start
    while i < s.length
        l = s[i]
        found = letters.find_index(l) != nil
        if (!found)
            letters.push(l)
            i+=1
            if letters.length > longest_substring.length
                longest_substring  = letters.join
            end 
        else
            letters = []
            index_start += 1
            i = index_start
        end 
    end
    longest_substring.length
end 
