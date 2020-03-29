require 'garage'

describe Garage do

  let(:broken_bike) { double :bike, working?: false, report_broken: false}
  let(:van) { double :van, load_garage: broken_bike }

  describe "#store" do
    it 'gets load from van and adds to garage' do
      van.load_garage
      subject.store(broken_bike)
      expect(subject.storage).to eq broken_bike
    end
  end
end