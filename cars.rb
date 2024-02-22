class Car
  attr_reader :make, :model, :color, :price, :mileage
  def initialize(make, model, color, price)
    @make = make
    @model = model
    @color = color
    @price = price
    @mileage = 0
  end

  def set_price(p)
    @price = p
  end

  def paint(c)
    @color = c
  end


  def show_car_info
    puts "Make: #{@make}\nModel: #{@model}\nColor: #{@color}\nPrice: $#{@price}\nMileage: #{@mileage} miles"
  end

  def travel(distance)
    @mileage += distance
    puts "The car is traveling for #{distance} miles"
  end
end
