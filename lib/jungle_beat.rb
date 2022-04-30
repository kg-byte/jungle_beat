require 'linked_list'

class JungleBeat 
attr_accessor :list 
  def initialize
	@list = LinkedList.new
  end	  

  def append(beats)
  	seperated_beats = beats.split(" ")
  	seperated_beats.each do |beat|
  	  @list.append(beat)
  	  @list.listify
  	end
  end

  def count 
  	@list.count 
  end
end