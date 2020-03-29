require 'docking_station'

describe DockingStation do
  subject(:station) { DockingStation.new }
  let(:bike) { double :bike, working?: true }
  let(:broken_bike) { double :bike, working?: false, report_broken: false}
  let(:van) { double :van, load: broken_bike }

  describe '#release_bike' do
    it 'subject responds to release_bike' do
      expect(station).to respond_to(:release_bike)
    end

    it 'returns a Bike' do
      station.dock(bike)
      expect(station.release_bike).to eq(bike)
    end

    it 'check dock wont release broken bike' do
      broken_bike.report_broken
      station.dock(broken_bike)
      expect{ station.release_bike }.to raise_error 'bike broken'
    end

    it 'raises error if no bikes in dock' do
      
      expect { station.release_bike }.to raise_error 'No bike available'
    end
  end

  describe '#working?' do
    it 'returns true' do
      expect(bike.working?).to eq(true)
    end

    it 'check a broken bike' do
      broken_bike.report_broken
      expect(broken_bike.working?).to eq(false)
    end
  end

  describe '#dock' do
    it 'docking station can dock bike' do
      expect(station).to respond_to(:dock)
    end

    it 'docking station returns bikes' do
      station.dock(bike)
      expect(station.bikes[:working]).to eq([bike])
    end

    it 'check dock accepts broken biked' do
      broken_bike.report_broken
      expect(station).to respond_to(:dock)
    end

    it 'separates broken and working bikes in dock' do
      broken_bike.report_broken
      station.dock(broken_bike)
      expect(station.bikes[:broken]).to include broken_bike
    end

    it 'raises error if dock hits capacity' do
      DockingStation::DEFAULT_CAPACITY.times { station.dock(bike) }
      expect { station.dock(bike) }.to raise_error 'Dock full'
    end

    it 'works with a variable capacity' do
      station_2 = DockingStation.new(72)
      72.times { station_2.dock(bike) }
      expect { station_2.dock(bike) }.to raise_error 'Dock full'
    end
  end

  describe '#load_van' do

    it 'loads van' do
      station.dock(broken_bike)
      station.load_van
      expect(van.load).to eq(broken_bike)
    end

    it 'removes broken bikes from docking station' do
      station.dock(broken_bike)
      station.load_van
      expect(station.bikes[:broken]).to eq []
    end

  end 

end
