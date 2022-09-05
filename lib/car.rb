class Car
  attr_reader :make, :model, :monthly_payment, :loan_length

  def initialize(make_model, monthly_payment, loan_length)
    @make = "Ford"
    @model = "Mustang"
    @make_model = make + model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @car_color = nil

  end

  def total_cost
    @monthly_payment * @loan_length
  end

  def color
    @car_color
  end

end
