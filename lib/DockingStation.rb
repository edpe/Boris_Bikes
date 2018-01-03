require "./lib/Bike.rb"

class DockingStation

def initialize
 @dock = []
end

attr_reader :dock

def release_bike
   fail "no bikes" if  @dock.empty? == true
   Bike.new
end

def dock_bike(bike)
  @dock << bike
end

def view_bike
  @dock.sample
end

end
