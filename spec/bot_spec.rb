RSpec.describe Rover::Bot do
  let(:bot) { Rover::Bot.new }

  it 'exposes position' do
    expect(bot.position).to eq [0,0]
  end

  it 'exposes direction' do
    expect(bot.direction).to eq 0
  end

  describe '.forward' do
    it 'moves forward based on its direction vector' do
      bot.forward
      expect(bot.position).to eq [1,0]
      bot.left
      bot.forward
      expect(bot.position).to eq [1,-1]
      bot.right
      bot.forward
      expect(bot.position).to eq [2,-1]
      bot.right
      bot.forward
      expect(bot.position).to eq [2,0]      
    end
  end

  describe '.to_s' do
    it 'returns a string representation of the bots position' do
      expect(bot.to_s).to eq 'Robot at (0, 0) facing North'
      bot.forward
      expect(bot.to_s).to eq 'Robot at (1, 0) facing North'  
      bot.left
      expect(bot.to_s).to eq 'Robot at (1, 0) facing West'
      bot.left
      expect(bot.to_s).to eq 'Robot at (1, 0) facing South'
      bot.left
      expect(bot.to_s).to eq 'Robot at (1, 0) facing East'
      bot.right
      expect(bot.to_s).to eq 'Robot at (1, 0) facing South'            
    end
  end

  describe '.right' do
    it 'uses a circular array' do
        bot.right
        expect(bot.direction).to eq 1
        bot.right
        expect(bot.direction).to eq 2
        bot.right
        expect(bot.direction).to eq 3
        bot.right
        expect(bot.direction).to eq 0        
    end

    context 'at the beginning' do
      it 'rotate to the direction 1' do
        bot.right
        expect(bot.direction).to eq 1
      end
    end
  end

  describe '.left' do
    it 'uses a circular array' do
        bot.left
        expect(bot.direction).to eq 3
        bot.left
        expect(bot.direction).to eq 2
        bot.left
        expect(bot.direction).to eq 1
        bot.left
        expect(bot.direction).to eq 0
        bot.left
        expect(bot.direction).to eq 3                
    end

    context 'at the beginning' do
      it 'rotate the direction back to 3' do
        bot.left
        expect(bot.direction).to eq 3
      end
    end

    context 'after calling right' do
      it 'goes back the previous direction' do
        bot.right
        expect(bot.direction).to eq 1
        bot.left
        expect(bot.direction).to eq 0        
      end
    end
  end
end