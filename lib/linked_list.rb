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
  	listify
  end

  def listify 
  	@list.each_with_index do |node, index|
  	  if index < @list.count-1 
  	  	node.next_node = @list[index+1]
  	  end
  	end
  end

  def count 
  	@list.count
  end

  def to_string
  	 @list.map {|node| node.data}.join(" ")
  end


end