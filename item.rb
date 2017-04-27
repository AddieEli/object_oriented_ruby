
module StoreFront
class Item
  attr_reader :color, :size, :price 
  attr_writer :price

  def initialize(input_options)
      @color = input_options[:color]
      @size = input_options[:size]
      @price = input_options[:price]
   end 

end 
end 