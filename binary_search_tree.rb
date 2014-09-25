class BST
  attr_accessor :root

  def initialize
    @root = nil
  end

  def add_node(value)
    if !@root
      @root = Node.new(value)
      return @root
    end
    add_helper(@root, value)
  end

  def add_helper
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