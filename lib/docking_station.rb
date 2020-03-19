require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bike available" if @bikes == []
    @bikes.pop
  end

  def dock(bike)
    fail "Dock full" if @bikes.length == 20
    @bikes.push(bike)
  end

end
