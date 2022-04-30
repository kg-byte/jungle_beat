require 'linked_list'

class JungleBeat 
attr_accessor :list 
  def initialize(beat = nil)
	@list = LinkedList.new(beat)
  end	  


  def valid?(beat)
  	valid_beats = ["lee", "ree", "tee", "dee", "deep", "bop", "boop", "la", "na", "doo", "ditt", "woo", "hoo", "shu"]
  	if valid_beats.include?(beat)
  	  true
  	else 
  	  false
  	end
  end

  def prepend(beats)
  	seperated_beats = beats.split(" ").reverse
  	seperated_beats.each do |beat|
  	  @list.prepend(beat) if valid?(beat)
  	  @list.listify
  	end
  end


  def append(beats)
  	seperated_beats = beats.split(" ")
  	seperated_beats.each do |beat|
  	  @list.append(beat) if valid?(beat)
  	  @list.listify
  	end
  end

  def count 
  	@list.count 
  end

  def all 
  	@list.to_string
  end

  def play 
  	beats = @list.to_string
  	`say -r 500 -v Boing #{beats}`
  end
end