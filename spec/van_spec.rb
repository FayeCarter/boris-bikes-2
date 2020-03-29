require 'van'

describe Van do

  let(:broken_bike) { double :bike, working?: false, report_broken: false}
  let(:station) { double :DockingStation, load_van: broken_bike }
  let(:garage) {double :Garage, store: broken_bike}

  it 'initializes with no load' do
    expect(subject.load).to eq []
  end

  describe '#get_load' do
    it 'gets load from docking station and adds to van load' do
      station.load_van
      expect(subject.get_load(broken_bike)).to eq broken_bike
    end
  end

  describe 'load_garage' do
    it 'removes bikes from van' do
      subject.load = broken_bike
      subject.load_garage
      expect(subject.load).to eq []
    end

    it 'moves bikes to garage' do
      subject.load = broken_bike
      subject.load_garage
      expect(garage.store).to eq broken_bike
    end
  end

end