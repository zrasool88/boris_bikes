require 'bike_container'
require 'spec_helper'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do
  let(:holder) { ContainerHolder.new }

  context 'In the case with no broken bikes it' do
    let(:bike) { Bike.new }

    it 'should accept a bike' do
      expect(holder.bike_count).to eq(0)
      holder.dock(bike)
      expect(holder.bike_count).to eq(1)
    end

    it 'should release a bike' do
      holder.release(bike)
      expect(holder.bike_count).to eq(0)
    end

    it 'should know when its full' do
      expect(holder).not_to be_full
      10.times { holder.dock(bike) }
      expect(holder).to be_full
    end

    it 'should not accept a bike if its full' do
      10.times { holder.dock(bike) }
      expect { holder.dock(bike) }.to raise_error(RuntimeError)
    end
  end

  context 'In the case with broken bikes it' do
    let(:working_bike) { Bike.new }
    let(:broken_bike) { Bike.new }

    it 'should provide the list of available bikes' do
      broken_bike.break!
      holder.dock(working_bike)
      holder.dock(broken_bike)
      expect(holder.available_bikes).to eq([working_bike])
    end

    it 'should not release a broken bike' do
      broken_bike.break!
      holder.dock(working_bike)
      holder.dock(broken_bike)
      holder.release(broken_bike)
      expect(holder.bike_count).to eq(2)
    end
  end
end
