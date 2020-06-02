class ListNodes
    attr_accessor :value, :next_node, :index
  def initialize(value)
    @value=value
    @next_node=nil
    @index=0
  end
  def to_s
    "Node: #{@value}"
  end
end
      