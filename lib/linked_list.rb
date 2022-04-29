require 'node'

class LinkedList
attr_reader :head
  def initialize
  	@head = nil 
  	@list = []
  end

  def append(beat)
  	node = Node.new(beat)
  	@list << node
  	@head = @list[0]
  end

  def count 
  	@list.count
  end

  def to_string
  	 @list.map {|node| node.data}.join
  end


end