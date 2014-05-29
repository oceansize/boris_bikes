require './lib/docking_station'

describe 'Docking Station' do

let(:bike) { Bike.new }
let(:station) { DockingStation.new(:capacity => 20) }

  it 'should accept a bike' do
    # we expect a new station to have 0 bikes
    expect(station.bike_count).to eq(0)
    # dock a bike to the station
    station.dock(bike)
    # test expectation for DS to have 1 bike
    expect(station.bike_count).to eq(1)
  end

  it 'should release a bike' do
    station.dock(bike)
    station.release(bike)
    expect(station.bike_count).to eq(0)
  end

  it'should know when it\'s full' do
    expect(station).not_to be_full
    20.times { station.dock(Bike.new) }
    expect(station).to be_full
  end

end