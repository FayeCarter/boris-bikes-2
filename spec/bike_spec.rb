require './lib/bike'

describe Bike do
  context 'is #working? working?' do
    it 'tests Bike responds to #working?' do
      expect(Bike.new).to respond_to(:working?)
    end


  end
end
