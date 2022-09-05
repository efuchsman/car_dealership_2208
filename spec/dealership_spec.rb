require 'rspec'
require './lib/car.rb'
require './lib/dealership.rb'

RSpec.describe Dealership do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership).to be_an_instance_of(Dealership)

  end
end
