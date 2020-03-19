require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bike available" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Dock full" if full?
    @bikes.push(bike)
  end

  private

  def full?
    return false if  @bikes.length < 20
    true
  end

  def empty?
    return false if  @bikes != []
    true
  end

end
