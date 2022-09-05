class Car
  attr_reader :make, :model, :monthly_payment, :loan_length, :make_model

  def initialize(make_model, monthly_payment, loan_length)
    @make_model = make_model
    @make = make_model.split.first
    @model = make_model.split[1]
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @car_color = nil
    @tot_cost = monthly_payment * loan_length

  end

  def total_cost
    @tot_cost
  end

  def color
    @car_color
  end

  def paint!(new_color)
    @car_color = new_color
  end

end
