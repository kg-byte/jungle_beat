require 'node'

class LinkedList
attr_reader :head
  def initialize(beat = nil)
    if beat == nil 
  	  @head = nil 
    	@list = []
    else 
      @head = Node.new(beat)
      @list = [@head]
    end
  end

  def append(beat)
  	node = Node.new(beat)
  	@list << node
  	@head = @list[0]
  	listify
  end

  def listify 
  	@list.each_with_index do |node, index|
  	  if index < count-1 
  	  	node.next_node = @list[index+1]
  	  end
  	end
  end

  def count 
  	@list.count
  end

  def to_string
  	 string_array.join(" ")
  end

  def prepend(beat)
  	node = Node.new(beat)
  	@list.unshift(node)
  	listify
  end

  def insert(location, beat)
  	node = Node.new(beat)
  	@list.insert(location,node)
  	listify
  end

  def string_array 
  	@list.map{|node| node.data}
  end
  def find(location, number)
  	if number == 1
  	  string_array[location]
  	else
  		string_array[location..location+number-1].join(" ")
  	end
  end

  def includes?(beat)
  	string_array.include?(beat)
  end

  def pop 
  	@list.pop 
  	listify
  end
end