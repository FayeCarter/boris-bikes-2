require './lib/docking_station'

describe DockingStation do
  subject(:station) {DockingStation.new}
  subject(:bike) {DockingStation.new.release_bike}
  context 'responds to #release_bike' do
    it 'calls release_bike' do
      expect(station).to respond_to(:release_bike)
    end

    it 'is of the Bike class' do
      expect(station.release_bike).to be_instance_of(Bike)
    end
  end


  context 'checks if bike working' do
    it 'returns true' do
      expect(bike.working?).to eq(true)
    end
  end

  context 'be able to dock bike' do
    it 'docking station can dock bike' do
      expect(station.dock(bike)).to eq(bike)
    end

    it 'docking station returns bike' do
      station.dock(bike)
      expect(station.bike).to eq(bike)
    end
  end
end
