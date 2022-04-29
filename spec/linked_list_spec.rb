require './lib/linked_list'

RSpec.describe LinkedList do 
  let!(:list) {LinkedList.new}

  it 'exists' do 
  	expect(list).to be_a LinkedList
  end

  it 'starts with no head' do 
  	expect(list.head).to be nil 
  end

  describe 'instance methods' do 
    it 'can append a node and next node is nil' do 
      list.append("doop")
      expect(list.head).to be_a Node
      expect(list.head.data).to eq('doop')
      expect(list.head.next_node).to eq nil 
    end

    it 'counts node 1 after appending a node' do 
      list.append("doop")
      expect(list.count).to eq 1
    end

    it 'turns list back to string' do 
      list.append("doop")
      expect(list.to_string).to eq "doop"
    end

  end

end