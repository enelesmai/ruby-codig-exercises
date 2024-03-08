# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    forward = String(x)
    backward = forward.reverse()
    forward == backward
end
