module Driveable
    def brake
      @speed = 0
    end

    def accelerate
      @speed += 10
    end

    def turn(new_direction)
      @direction = new_direction
    end
end


class Vehicle
  include Driveable

  def initialize
    @speed = 0
    @direction = 'north'
  end
end

class Car < Vehicle
  include Driveable

  attr_reader :fuel, :make, :model
  attr_writer :fuel, :make, :model

  def initialize(input_options)
    super()
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike < Vehicle
  include Driveable

  attr_reader :gears, :type, :weight
  attr_writer :gears, :type, :weight

  def initialize(input_options)
    super()
    @gears = input_options[:gears]
    @type = input_options[:type]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end

end

car_1 = Car.new(fuel: "Gasoline", make: "Mazda", model: "RX7")
bike_1 = Bike.new(gears: 6, type: "mountain", weight: 10)

car_1.accelerate
car_1.honk_horn

bike_1.accelerate
bike_1.ring_bell
