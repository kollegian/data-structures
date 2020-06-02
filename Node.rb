class Node
    attr_accessor :value, :left_child, :right_child
  def initialize(v)
    @value=v
    @left_child=nil
    @right_child=nil
  end
end