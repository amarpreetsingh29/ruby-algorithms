class Queue
  def initialize
    @arr = []
  end

  def push(item)
    @arr.push(item)
  end

  def pop
    @arr.shift
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

  def empty?
    @arr.empty?
  end

  def clear
    @arr = []
  end
end
