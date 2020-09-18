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

    it 'contains numbers in all tries excluding two which are spares' do
        expect(scorer([1,"/",1,2,1,2,1,2,1,"/",1,2,1,2,1,2,1,2,1,2])).to eq(46)
    end

    it 'contains spares in all tries except last frame' do
        expect(scorer([1,"/",1,"/",1,"/",1,"/",1,"/",1,"/",1,"/",1,"/",1,"/",1,2])).to eq(102)
    end

    it 'contains one strike and the rest numbers' do
        expect(scorer(["X",1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2])).to eq(40)
    end

end