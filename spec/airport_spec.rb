require 'airport'

describe Airport do
  subject(:airport) { described_class.new(10) }
  it 'so planes land at airport, instruct a plane to land' do
    airport = Airport.new(10)
    plane = Plane.new
    airport.land(plane)
    expect { airport.land(plane) }.not_to raise_error
  end

  it 'instructs a plane to land' do
    expect(airport).to respond_to(:land).with(1).argument
  end

  it "planes can take off from airport, instruct a plane to take off" do
    airport = Airport.new(10)
    plane = Plane.new
    expect { airport.take_off(plane) }.not_to raise_error
  end

  it 'instructs a plane to land' do
    expect(airport).to respond_to(:take_off).with(1).argument
  end

  it 'instructs a plane to land, except when airport is at capacity' do
    airport = Airport.new(10)
    plane = Plane.new
    10.times do airport.land(plane)
      end
    expect { airport.land(plane) }.to raise_error "Aiport is at capacity"
  end

  it 'does not allow to land when airport full' do
    plane = Plane.new
    10.times do
      airport.land(plane)
    end
    expect { airport.land(plane) }.to raise_error "Aiport is at capacity"
  end
end
