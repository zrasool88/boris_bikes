require 'docking_station'
require 'spec_helper'

describe DockingStation do
  let(:station) { DockingStation.new(capacity: 50) }

  it 'should allow setting default capacity on initializing' do
    expect(station.capacity).to eq(50)
  end
end
