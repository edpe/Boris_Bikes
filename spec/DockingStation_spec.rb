require_relative "../lib/DockingStation.rb"

describe DockingStation do

bike = DockingStation.new.release_bike


it { is_expected.to respond_to(:release_bike) }

it "release bike should return a bike" do
  expect(bike.is_a?(Bike)).to eq true
end

it "expects bike to be working" do
  expect(bike.working?).to eq true
end

station = DockingStation.new
test_bike = Bike.new
it { is_expected.to respond_to(:dock_bike) }
it { is_expected.to respond_to(:dock) }

it "expects a bike to be docked" do
  station.dock_bike(test_bike)
  expect(station.dock.include?(test_bike)).to eq true
end



end
