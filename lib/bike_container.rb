require_relative 'bike'

module BikeContainer
  DEFAULT_CAPACITY = 10

  attr_writer :capacity

  def bikes
    @bikes ||= []
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def bike_count
    bikes.count
  end

  def dock(bike)
    fail 'Station is full' if full?
    bikes << bike
  end

  def release(bike)
    bikes.delete(bike) unless bike.broken?
  end

  def full?
    bike_count == capacity
  end

  def available_bikes
    bikes.reject(&:broken?)
  end
end
