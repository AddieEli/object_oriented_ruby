
class Sheep
   @@count = 0     # @@ is a class Method
                              # @@ available w/o instances and throughout entire class
  def initialize (input_options)
    @name = input_options[:name]
    @@count += 1                           # += count = count +1
  end 
  
  def name
    puts @name
  end 
  
  def bleet
    puts "bahh"
  end 

  def self.grass       #Class Variable! runs on class/factory
    puts "yum"
  end

  def self.count  
   puts @@count
  end 

end

Sheep.count

bob = Sheep.new(name: "Bob") 
sue = Sheep.new(name: "Sue")

Sheep.count

bob.bleet
Sheep.grass
bob.name
sue.name