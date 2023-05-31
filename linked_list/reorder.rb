require_relative 'create_linked_list'


def reorder_linked_list(list)
  temp = list
  stack = []

  while !temp.nil?
    stack.push(temp.data)
    temp = temp.next
  end

  i=0
  j=stack.length - 1
  bool = true

  temp = list
  loop do
    if temp.nil?
      break
    end

    if bool
      value = stack[i]
      i += 1
    else
      value = stack[j]
      j -= 1
    end

    temp.data = value
    temp = temp.next
    bool = !bool
  end
end

input = [1,2,3,4,5]
list = create_linked_list(input)[:node]
reorder_linked_list(list)
puts list

# 1 -> 2 -> 3 -> 4 -> 5
# 1 -> 5 -> 2 ->4 -> 3
# not actual node replacements, but just data changes
#
