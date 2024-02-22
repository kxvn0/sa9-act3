require_relative 'cars'

RSpec.describe Car do
  describe "#set_price" do
    it "sets the price of the car" do
      car = Car.new("Dodge", "Charger", "Gray", 25000)
      car.set_price(30000)
      expect(car.price).to eq(30000)
    end
  end

  describe "#paint" do
    it "paints car with desired color" do
      car = Car.new("Dodge", "Charger", "Gray", 25000)
      car.paint("Black")
      expect(car.color).to eq("Black")
    end
  end

  describe "#show_car_info" do
    it "shows info for the car" do
      car = Car.new("Dodge", "Charger", "Gray", 25000)
      expect { car.show_car_info }.to output("Make: Dodge\nModel: Charger\nColor: Gray\nPrice: $25000\nMileage: 0 miles\n").to_stdout
    end
  end


  describe "#travel" do
    it "updates the mileage for the car" do
      car = Car.new("Dodge", "Charger", "Gray", 25000)
      car.travel(250)
      expect(car.mileage).to eq(250)
    end

    it "displays the message that the car is currently traveling" do
      car = Car.new("Dodge", "Charger", "Gray", 25000)
      expect { car.travel(250) }.to output("The car is traveling for 250 miles\n").to_stdout
    end
  end
end
