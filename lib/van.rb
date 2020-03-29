require_relative 'docking_station'
require_relative 'garage'

class Van

  attr_accessor :load
  attr_reader :garage

  def initialize
    @load = []
    @garage = Garage.new
  end

  def get_load(bikes)
    @load = bikes
  end

  def load_garage
    @garage.store(@load)
    @load = []
  end
end