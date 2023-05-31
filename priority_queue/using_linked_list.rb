module DS
  class PriorityQueue
    attr_accessor :head
    def initialize
      @head = nil
    end

    def insert(value, priority)
      node = PriorityQueueNode.new(
        value,
        priority
      )

      if @head.nil?
        @head = node
      else
        insert_node(node)
      end
    end

    def remove
    end

    def top
      @head
    end

    private

    def insert_node(node)
      temp = @head
      prev = nil
      found = false

      while !temp.nil?
        if  node.priority < temp.priority
          prev = temp
          temp = temp.next
        elsif node.priority > temp.priority
           if !prev.nil?
            prev.next = node
            node.next = temp
           else
            @head = node
            node.next = temp.next
           end
          found = true
          break
        elsif node.priority == temp.priority
          node.next = temp.next
          temp.next = node
          found = true
          break
        end
      end

      #lowest priority node, set it as last node
      if !found
        prev.next = node
      end
    end
  end

  class PriorityQueueNode
    attr_accessor :value, :priority, :next

    def initialize(value, priority)
      @value = value
      @priority = priority
      @next = nil
    end
  end

  private_constant  :PriorityQueueNode
end

pq = DS::PriorityQueue.new
pq.insert(2, 4)
pq.insert(2, 4)
pq.insert(1, 2)
pq.insert(1, 3)
pq.insert(1, 5)
p pq.head
