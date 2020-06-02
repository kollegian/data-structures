require_relative "ListNodes"

class LinkedList
    
  def initialize(node)
    @headnode=node
    @lastnode=node
    @size=1
  end
  def append(value)
    a=ListNodes.new(value)
    @size+=1
    if @lastnode==@headnode
      @headnode.next_node=a
      @lastnode=a
    else
      temp=@lastnode
      temp.next_node=a
      @lastnode=a
    end
  end
  def prepend(value)
    a=ListNodes.new(value)
    a.next_node=@headnode
    @headnode=a
    @size+=1
  end
  def set_index
    node=@headnode
    i=0
    while node!=nil
      node.index=i
      i+=1
      node=node.next_node
    end
  end
  def at(index)
    set_index
    node=@headnode
    while node!=nil
      if node.index==index
        return node
      end
      node=node.next_node
    end
    return -1
  end
  def size
    return @size         
  end
  def head
    return @headnode
  end
  def tail
    return @lastnode
  end
  def pop
    @size-=1
    for_return=@lastnode
    node=@headnode
    while node!=nil
      if node.next_node==@lastnode
        node.next_node=nil
        @lastnode=node
      end
      node=node.next_node
    end
    return for_return
  end  
  def to_s
    result=""
    node=@headnode
    while node.next_node!=nil
      result+=" #{node.value} ==>"
      node=node.next_node
    end
      result +="#{@lastnode.value}"
      return result
  end
end

