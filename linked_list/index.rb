require_relative 'search'
require_relative 'create_linked_list'

class LinkedList
  attr_reader :list

  #store the input and create list lazily
  def initialize(data)
    if data.instance_of?(Array)
      @input = data
    else
      throw StandardError.new("Input should be an array")
    end
  end

  def create
    result = create_linked_list(@input)
    @list = result[:node]
    @last_node = result[:last_node]
  end

  def find(item)
    find_item_in_linked_list(@list, item)
  end

  def append(item)
    node = new_node(item)
    @last_node[:next] = node
    @last_node = @last_node[:next]
  end

  def prepend(item)
    node = new_node(item)
    node[:next] = @list
    @list = node
  end

  def each(&block)
    temp = @list
    begin
      block.call(temp[:data])
      temp = temp[:next]
    end while !temp.nil?
  end

  def new_node(item)
    {
      data: item,
      next: nil
    }
  end
end

input = [3,4,5,6]
ll = LinkedList.new(input)
ll.create

ll.prepend(2)
ll.append(7)


ll.each do |item|
  puts item
end
