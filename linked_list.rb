class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def add_head(node)
    if !@head 
      @tail = node
      @head = node
    else
      node.next = head
      @head = node
    end
  end

  def remove_head
    if !@head
      return nil
    else
      former_head = @head
      if @tail == @head
        @tail = nil
      end
      @head = @head.next
    end
    former_head
  end

  def add_tail(node)
    if !@head
      @tail = node
      @head = node
    else
      @tail.next = node
      @tail = node
    end
  end

end

class Node
  attr_reader :value
  attr_accessor :next

  def initialize(value)
    @value = value
    @next = nil
  end
end