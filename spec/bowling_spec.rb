require './bowling.rb'

RSpec.describe 'Bowling' do

    it 'checks that it returns an integer as a score' do
        expect(scorer("X X X X X X X X X X X X")).to be_kind_of(Integer)
    end
    
    it 'returns a score when in put contains numbers in all tries' do
        expect(scorer("12 12 12 12 12 12 12 12 12 12")).to eq(30)
    end

end