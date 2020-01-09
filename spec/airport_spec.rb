require 'airport'

describe Airport do
  subject(:airport) { described_class.new }
  it 'so planes land at airport, instruct a plane to land' do
    airport = Airport.new
    plane = Plane.new
    airport.land(plane)
    expect { airport.land(plane) }.not_to raise_error
  end

  it 'instructs a plane to land' do
    expect(airport).to respond_to(:land).with(1).argument
  end

  it "planes can take off from airport, instruct a plane to take off" do
    airport = Airport.new
    plane = Plane.new
    expect { airport.take_off(plane) }.not_to raise_error
  end

  it 'instructs a plane to land' do
    expect(airport).to respond_to(:take_off).with(1).argument
  end
end
