require_relative 'bike'

class DockingStation

  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = {working: [], broken: []}
  end

  def release_bike
    fail "No bike available" if empty?
    fail "bike broken" unless @bikes[:working].count > 0

    @bikes[:working].pop()
  end

  def dock(bike)
    fail "Dock full" if full?
    
    bike.working? ? @bikes[:working].push(bike) : @bikes[:broken].push(bike)
  end

  private

  def full?
    return false if  (@bikes[:working] + @bikes[:broken]).length < @capacity
    true
  end

  def empty?
    return true if  @bikes[:working] == [] && @bikes[:broken] == []
    false
  end

end
