class BST
  attr_accessor :root

  def initialize
    @root = nil
  end

end

class Node
  attr_accessor :left, :right


  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

end