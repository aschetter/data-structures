class BST
  attr_accessor :root

  def initialize
    @root = nil
  end

  def add_node(value)
    if !@root
      @root = Node.new(value)
    else
      add_helper(@root, value)
    end
  end

  def add_helper(node, value)
    if node.value == value
      return node

    elsif value < node.value
      if node.left
        add_helper(node.left, value)
      else
        node.left = Node.new(value)
      end

    else
      if node.right
        add_helper(node.right, value)
      else
        node.right = Node.new(value)
      end
    end
  end

  def find(value)
    find_helper(@root, value)
  end

  def find_helper(node, value)
    if value == node.value
      return true
    elsif value < node.value && node.left
      find_helper(node.left, value)
    elsif value > node.value && node.right
      find_helper(node.right, value)
    else
      return false
    end  
  end
end

class Node
  attr_reader :value
  attr_accessor :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

end