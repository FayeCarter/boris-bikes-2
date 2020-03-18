require './lib/docking_station'

describe DockingStation do

  context 'responds to #release_bike' do
    it 'calls release_bike' do
      expect(DockingStation.new()).to respond_to(:release_bike)
    end

    subject(:station) {DockingStation.new}
    it 'is of the Bike class' do
      expect(station.release_bike).to be_instance_of(Bike)
    end
  end


  context 'checks if bike working' do
    subject(:bike) {DockingStation.new.release_bike}
    it 'returns true' do
      expect(bike.working?).to eq(true)
    end
  end
end
