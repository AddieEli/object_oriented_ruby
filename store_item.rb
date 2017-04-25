# cat = {color: "black", size: "medium", price: 80}
# dog = {color: "brown", size: "large", price: 90}

# cat = {"color" => "black", "size:" => "medium", "price" => 80}
# dog = {"color" => "brown", "size:" => "large", "price" => 90}

# puts "#{cat[color]}"


class Item
  attr_reader :color, :size, :price 
  attr_writer :price

  def initialize(input_options)
      @color = input_options[:color]
      @size = input_options[:size]
      @price = input_options[:price]
   end 

end 

item_one = Item.new(
                    color: "black",
                    size: "large",
                    price: 80
                   )

item_two = Item.new(
                    color: "brown",
                    size: "small",
                    price: 90
                   )

puts item_one.color 
item_one.price = 90
puts item_one.price


