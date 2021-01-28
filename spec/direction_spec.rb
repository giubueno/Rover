RSpec.describe Rover::Direction do
  let(:direction) { Rover::Direction.new('North', [1,0]) }
  it 'exposes the name' do
    expect(direction.name).to eq 'North'
  end

  it 'exposes the vector' do
    expect(direction.vector).to eq [1,0]
  end  
end