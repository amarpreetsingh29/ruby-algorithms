require_relative 'create_linked_list'

def find_item_in_linked_list(list, item)
  temp = list
  while !temp.nil?
    if temp[:data] == item
      return temp
    else
      temp = temp[:next]
    end
  end

  return "Not found"
end

# a = [3,4,5]
# list = create_linked_list(a)
# puts find_item_in_linked_list(list, 6)
