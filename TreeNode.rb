require_relative "Node"
class TreeNode
  attr_accessor :root  
  def initialize(arr)
    @root=Node.new(arr.pop)
  end
  def to_binary(arr, parentNode)
    if arr.empty?
      return @root
    end
    a=arr.pop
    child=Node.new(a)
    if child.value<parentNode.value
      parentNode.left_child=child
    else
      parentNode.right_child=child
    end
    return to_binary(arr, child)
  end
end



list1=[10,9,3,2,15,12]
new_tree=TreeNode.new(list1)
new_tree.to_binary(list1, new_tree.root)
puts new_tree.root.right_child.left_child.value


