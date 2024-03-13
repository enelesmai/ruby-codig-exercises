# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    sum = list_to_number(l1) + list_to_number(l2)
    number_to_list(sum)
end

def list_to_number(l)
    node = l
    n = node.val.to_s
    while (node=node.next) do
        n += node.val.to_s
    end
    n.reverse.to_i
end

def number_to_list(sum)
    lresult = LinkedList.new
    sum.to_s.chars.reverse.each do |c|
        lresult.append(c.to_i)
    end
    lresult.first
end

class LinkedList
  def initialize
    @head = nil
  end
  def first
    @head
  end
  def append(value)
    if @head
      find_tail.next = ListNode.new(value)
    else
      @head = ListNode.new(value)
    end
  end
  def find_tail
    node = @head
    return node if !node.next
    return node if !node.next while (node = node.next)
  end
end
