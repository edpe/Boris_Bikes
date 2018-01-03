require "./lib/Bike.rb"

class DockingStation

def initialize
 @dock = []
end

attr_reader :dock

def release_bike
  Bike.new
end

def dock_bike(bike)
  @dock << bike
end


end
