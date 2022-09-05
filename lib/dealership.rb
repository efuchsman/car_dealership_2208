class Dealership
attr_reader :name, :address, :inventory, :inventory_count

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
    @tot_value = 0
  end

  def add_car(car)
    @car = car
    @inventory_count += 1
    @inventory << car
    @tot_value += car.total_cost
  end

  def has_inventory?
    @inventory_count != 0
  end

  def cars_by_make(make)
    @make = make

    @inventory.select do |car|
      car.make == make
    end
  end

  def total_value
    @tot_value
  end

  def details


  end

end
