class Node
  attr_reader :value
  attr_accessor :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def add_head(value)
    node = Node.new(value)

    if !@head 
      @tail = node
      @head = node
    else
      node.next = head
      @head = node
    end
    node.value
  end

  def remove_head
    if !@head
      return nil
    else
      former_head = @head
      if @tail == @head
        @tail = nil
        @head = nil
      else
        @head = @head.next
      end
    end
    former_head.value
  end

  def add_tail(value)
    node = Node.new(value)

    if !@head
      @tail = node
      @head = node
    else
      @tail.next = node
      @tail = node
    end
    node.value
  end

  def remove_tail
    if !@head
      return nil
    else
      former_tail = @tail

      if @tail == @head
        @head =nil
        @tail = nil
        return former_tail.value
      end

      node = @head
      previous_node = nil

      while node.next
        previous_node = node
        node = node.next
      end

      @tail = previous_node
      @tail.next = nil

    end
    former_tail.value
  end

end
