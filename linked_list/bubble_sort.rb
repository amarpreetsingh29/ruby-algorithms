
require_relative 'create_linked_list'

def bubble_sort_linked_list(list)
  ptr1 = list

  while !ptr1.nil?
    ptr2 = ptr1.next
    while !ptr2.nil?
      if(ptr1.data < ptr2.data)
        temp =  ptr1.data
        ptr1.data = ptr2.data
        ptr2.data = temp
      end
      ptr2 =  ptr2.next
    end
    ptr1 = ptr1.next
  end
  puts list
end

list = create_linked_list([9,4,1,3,5])[:node]
bubble_sort_linked_list(list)
