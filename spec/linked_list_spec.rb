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

    it 'appends and updates next node' do 
       list.append("doop")
       list.append("deep")

       expect(list.head.next_node).to be_a Node
       expect(list.head.next_node.data).to eq("deep")
       expect(list.count).to eq 2
       expect(list.to_string).to eq "doop deep"
    end

    it 'prepends a node to the beginning of a list' do 
      list.append('plop')
      list.append('suu')
      list.prepend('dop')
      expect(list.to_string).to eq 'dop plop suu'
    end

    it 'inserts a node to a list' do 
      list.append('plop')
      list.append('suu')
      list.prepend('dop')
      list.insert(1, 'woo')
      expect(list.to_string).to eq 'dop woo plop suu'
    end
  end

end