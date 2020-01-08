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
end
