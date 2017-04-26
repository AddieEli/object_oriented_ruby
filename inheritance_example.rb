class Transportation
  attr_reader :speed, :direction
  def intialize
    @speed = 0
    @direction = "north"
   end

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

class Car < Transportation
  attr_reader :fuel, :make, :model

  def initialize(input_options)
    super()                            # () stops it from passing super class information down from (input_options)
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]

  end 
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Transportation
  attr_reader :type, :weight    #didn't repeat speed since the reader exists in the Transportation class
  def initialize(variable)
    super()
    @speed = variable[:speed]
    @type = variable[:type]
    @weight = weight[:weight]
  end 

  def ring_bell
    puts "Ring ring!"
  end

end

bike = Bike.new(
                speed: 10,
                type: "Shwinn",
                weight: "30 lbs"
                ) 
car = Car.new(
              fuel: 10,
              make: "Ford",
              model: "The Truck"
               )

p car.fuel
