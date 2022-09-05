class Dealership
attr_reader :name, :address, :inventory, :inventory_count, :tot_value

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
    deets_hash = {
      "total_value" => @tot_value,
      "address" => @address
    }
  end

  def average_price_of_car
    avg = (@tot_value / inventory_count).to_s
    avg.gsub(/\B(?=(...)*\b)/, ',')
  end

  def cars_sorted_by_price
    @inventory.sort_by do|car|
      car.total_cost
    end
  end

  def inventory_hash

    invent_hash = {}

    @inventory.each do |car|
      # invent_hash[car.make] ||= []
      unless invent_hash[car.make]
        invent_hash[car.make] = []
      end
      invent_hash[car.make] << car
    end
    invent_hash
  end
end
