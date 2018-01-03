require_relative "../lib/DockingStation.rb"

describe DockingStation do

bike = DockingStation.new.release_bike

it { is_expected.to respond_to(:release_bike) }

it "release bike should return a bike" do
  bike.is_a?(Bike)
end

it "expects bike to be working" do
 bike.working? == true
end




end
