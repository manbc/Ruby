class Node
  
  attr_reader :value
  attr_accessor :left, :right
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

end

#binary search tree with no duplicates
class BinarySearchTree
  
  def initialize()
    @root = nil
  end

  def insert(n)
    if (@root == nil)
      @root = Node.new(n)
    else
      current = @root
      previous = nil
      while (current != nil)
        previous = current
        if (current.value == n)
          puts "no duplicate values allowed"
          return
        elsif (current.value > n)
          #go left
          current = current.left
        else
          current = current.right
        end
      end 
      if (previous.value > n)
        previous.left = Node.new(n)
      else
        previous.right = Node.new(n)
      end
    end
  end

  def find(n)
    if (@root == nil)
      puts "there are no nodes"
    end
    current = @root
    while (current != nil)
      if (current.value == n)
        return current
      elsif (current.value > n)
        current = current.left
      else
        current = current.right
      end
    end
    puts "#{n} is not in the tree"
  end
  def dfs_traversal(flag)
    if (@root == nil)
      puts "there are no nodes"
    end
    puts "traversing tree with flag #{flag}"
    dfs_recursive(flag, @root)
  end 

  def dfs_recursive(flag, current)
    if (current == nil)
      return
    end
    case flag
    when "preorder"
      puts current.value
      dfs_recursive(flag, current.left)
      dfs_recursive(flag, current.right) 
    when "inorder"
      dfs_recursive(flag, current.left)
      puts current.value
      dfs_recursive(flag, current.right)
    when "postorder"
      dfs_recursive(flag, current.left)
      dfs_recursive(flag, current.right)
      puts current.value
    else
      puts "invalid flag"
    end
  end

  def bfs()
    if (@root == nil)
      puts "there are no nodes"
    end
    puts "bfs traversal"
    visit_queue = Queue.new
    visit_queue.push(@root)
    while (!visit_queue.empty?)
      current_node = visit_queue.pop()
      puts current_node.value
      if (current_node.left != nil)
        visit_queue.push(current_node.left)
      end

      if (current_node.right != nil)
        visit_queue.push(current_node.right)
      end
    end
  end


  def delete(n):
  end
  private :dfs_recursive
  
end

bst = BinarySearchTree.new()
bst.insert(10)
bst.insert(13)
bst.insert(5)
bst.insert(2)
bst.insert(7)
bst.insert(12)
bst.insert(15)
bst.dfs_traversal("preorder")
bst.dfs_traversal("postorder")
bst.dfs_traversal("inorder")
bst.bfs()
