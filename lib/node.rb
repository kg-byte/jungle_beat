class Node 
attr_accessor :next_node
  def initialize(beat)
  	@beat = beat 
  	@next_node = nil 
  end

  def data 
  	@beat
  end

end