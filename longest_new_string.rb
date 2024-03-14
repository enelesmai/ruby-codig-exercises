# @param {Integer} x
# @param {Integer} y
# @param {Integer} z
# @return {Integer}
def longest_string(x, y, z)
    if (x > y)
        return ("AB"*z+"AABB"*y+"AA").length
    else
        exceed = y > x ? "BB" : "" 
        return ("BBAA"*x+exceed+"AB"*z).length      
    end
end
