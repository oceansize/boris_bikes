require 'bike'

describe 'Bike' do

  it 'should not be broken when created' do
    the_bike = Bike.new # create new instance of bike
    expect(the_bike).not_to be_broken
  end

  it 'should have the ability to be broken' do
    the_bike = Bike.new
    the_bike.break!
    expect(the_bike).to be_broken
  end

  it 'should be possible to fix bike' do
    the_bike = Bike.new
    the_bike.break!
    the_bike.fix!
    expect(the_bike).to_not be_broken
  end

end