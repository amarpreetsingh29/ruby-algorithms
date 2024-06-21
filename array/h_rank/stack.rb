class Stack
  def initialize
    @arr = []
  end

  def push(item)
    @arr.push(item)
  end

  def pop
    @arr.pop
  end

  def remove(item)
    @arr.delete(item)
  end

  def size
    @arr.length
  end

  def peek
    @arr.last
  end

  def clear
    @arr = []
  end

  def empty?
    @arr.length == 0
  end
end
