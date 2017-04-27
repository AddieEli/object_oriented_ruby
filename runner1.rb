module StoreFront
require "./food.rb"
item_one = StoreFront::Item.new(
                    color: "black",
                    size: "large",
                    price: 80
                   )

item_two = StoreFront::Item.new(
                    color: "brown",
                    size: "small",
                    price: 90
                   )

chicken = StoreFront::Food.new(
                    color: "red",
                    size: "large",
                    price: 90,
                    shelf_life: "4 years")


puts item_one.color 
item_one.price = 90
puts item_one.price
puts chicken.shelf_life

end

