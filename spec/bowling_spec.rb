require './bowling.rb'

RSpec.describe 'Bowling' do

    it 'checks that it returns an integer as a score' do
        expect(scorer([1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2])).to be_kind_of(Integer)
    end
    
    it 'contains numbers in all tries' do
        expect(scorer([1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2])).to eq(30)
    end

    it 'contains numbers in all tries excluding one which is a spare' do
        expect(scorer([1,"/",1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2])).to eq(38)
    end

end