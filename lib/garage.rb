class Garage

  attr_accessor :storage
  def initialize
    @storage = []

  end

  def store(bikes)
    @storage = bikes
  end

end