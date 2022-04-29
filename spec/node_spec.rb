require './lib/node'

RSpec.describe Node do 
  let!(:node) { Node.new("plop") }
  it 'exists' do 
  	expect(node).to be_a Node
  end

  describe 'instance methods' do 
  	it 'returns data' do 
  	  expect(node.data).to eq('plop')
  	end

  	it 'shows nil for next_node' do 
  	  expect(node.next_node).to be nil
  	end
  end


end