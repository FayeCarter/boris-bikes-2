require_relative 'bike'

class DockingStation

  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail "No bike available" if empty?
    fail "bike broken" unless @bikes[-1].working?
    @bikes.pop()
  end

  def dock(bike)
    fail "Dock full" if full?
    @bikes.push(bike)
  end

  private

  def full?
    return false if  @bikes.length < @capacity
    true
  end

  def empty?
    return false if  @bikes != []
    true
  end

end
