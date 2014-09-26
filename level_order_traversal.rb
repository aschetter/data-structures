require_relative 'binary_search_tree'
require_relative 'linked_list'

def level_order(root)
  if !root
    return nil
  else
    level_order_helper(root)
  end
end

def level_order_helper(root)
  @queue = LinkedList.new
  @queue.add_tail(root)

  while @queue.head
    p @queue.head.value.value

    if @queue.head.value.left
      @queue.add_tail(@queue.head.value.left)
    end
    if @queue.head.value.right
      @queue.add_tail(@queue.head.value.right)
    end
    @queue.remove_head
  end
end