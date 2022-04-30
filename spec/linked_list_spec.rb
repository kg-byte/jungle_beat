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

    it 'fiinds and returns said number of beats' do 
      list.append('deep')
      list.append('woo')
      list.append('shi')
      list.append('shu')
      list.append('blop')

      expect(list.find(2,1)).to eq 'shi'
      expect(list.find(1,3)).to eq 'woo shi shu'
    end


    it 'checks whether string includes a beat' do 
      list.append('deep')
      list.append('woo')
      list.append('shi')
      list.append('shu')
      list.append('blop')

      expect(list.includes?('deep')).to be true
      expect(list.includes?('dep')).to be false
    end

    it 'can delete the last node' do 
      list.append('deep')
      list.append('woo')
      list.append('shi')
      list.append('shu')
      list.append('blop')

      list.pop
      list.pop 
      expect(list.to_string).to eq 'deep woo shi'

    end
  end
end