require_relative "../lib/DockingStation.rb"

describe DockingStation do

it { is_expected.to respond_to(:release_bike) }

it "release bike should return a bike" do
  DockingStation.new.release_bike.is_a?(Bike)
end





end
