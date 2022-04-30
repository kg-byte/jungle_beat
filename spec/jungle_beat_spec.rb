require './lib/jungle_beat'

RSpec.describe JungleBeat do 
  let(:jb) {JungleBeat.new}
  it 'exists and has an empty list' do 
  	expect(jb).to be_a JungleBeat
  	expect(jb.list).to be_a LinkedList
  	expect(jb.list.head).to be nil 
  end

  it 'appends multiple beats as individual nodes' do 
  	jb.append('deep doo ditt')

  	expect(jb.list.head.data).to eq 'deep'
  	expect(jb.list.head.next_node.data).to eq 'doo'

  	jb.append("woo hoo shu")

  	expect(jb.count).to be 6
  end

  it 'can play the beats generated' do 
  	beats = "deep doo ditt woo hoo shu"
  	jb.append("deep doo ditt woo hoo shu")
  	expect(jb.play).to eq `say -r 500 -v Boing #{beats}`
  end

  it 'does not append a beat unless it is valid' do 
  	jb = JungleBeat.new("deep")
  	jb.append("Mississippi")
  	expect(jb.all).to eq("deep")
  	jb.prepend("lee tee ree Mississippi")
  	expect(jb.all).to eq("lee tee ree deep")

  end
end