require_relative "../lib/DockingStation.rb"

describe DockingStation do


station = DockingStation.new

test_bike = Bike.new

it { is_expected.to respond_to(:release_bike) }

it "release bike should return a bike" do
  station.dock_bike(test_bike)
  expect(station.release_bike.is_a?(Bike)).to eq true
end

it "if dock is empty, return error" do
  if station.dock.empty?
    expect{station.release_bike}.to raise_error
  end

end

it "expects bike to be working" do
  station.dock_bike(test_bike)
  expect(station.release_bike.working?).to eq true
end


it { is_expected.to respond_to(:dock_bike) }
it { is_expected.to respond_to(:dock) }

it "expects a bike to be docked" do
  station.dock_bike(test_bike)
  expect(station.dock.include?(test_bike)).to eq true
end



end
