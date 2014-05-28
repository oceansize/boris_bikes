require 'bike'

describe 'Bike' do

  it 'Should not be broken after we create it' do
    the_bike = Bike.new
    expect(the_bike).not_to be_broken
  end

  it 'Should be able to break' do
    bike = Bike.new
    bike.break!
    expect(bike).to be_broken
  end

end