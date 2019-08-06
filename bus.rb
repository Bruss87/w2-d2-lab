class Bus

attr_reader :route_number, :destination

def initialize(route_number, destination)
  @route_number = route_number
  @destination = destination
  @passengers = []
end

def drive
  return "Brum brum"
end

def passengers_on_bus
  return @passengers.length
end

def pick_up(passenger1)
  @passengers << passenger1
  return @passengers.length
end

def drop_off(passenger2, passenger1)
  @passengers << passenger2
  @passengers << passenger1
  @passengers.delete(passenger2)
  return @passengers.length
end

def empty_bus(passenger2, passenger1)
  @passengers << passenger2
  @passengers << passenger1
  @passengers = []
  @passengers.empty?()
end


end
