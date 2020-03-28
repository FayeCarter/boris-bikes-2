require 'van'

describe Van do

  let(:bikes) { double :bikes }
  subject(:van) { Van.new }  

  describe '#get_bikes' do
    
    it 'returns bikes' do
      allow(van).to receive(:get_bikes).and_return(bikes)
      expect(van.get_bikes).to eq bikes
    end
  end

end