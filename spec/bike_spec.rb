require './lib/bike'

describe 'Bike' do
# create new instance of bike (RSPEC SYNTAX)
let (:bike) { Bike.new }

  it 'should not be broken when created' do
    expect(bike).not_to be_broken
  end

  it 'should have the ability to be broken' do
    bike.break!
    expect(bike).to be_broken
  end

  it 'should be possible to fix bike' do
    bike.break!
    bike.fix!
    expect(bike).to_not be_broken
  end

end