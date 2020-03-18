require './lib/docking_station'

describe DockingStation do

  context 'responds to #release_bike' do
    it 'calls release_bike' do
      expect(DockingStation.new()).to respond_to(:release_bike)
    end
  end
end
