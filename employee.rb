# employee_1 = ["Jim", "Jefferies", 70000, true]
# employee_2 = ["Maria", "Bamford", 80000, true]

# puts employee_1[0] + " " + employee_1[1] + " makes " + employee_1[2].to_s + " a year "
# puts "#{employee_1[0]} #{employee_1[1]} makes #{employee_1[2]} a year."

# employee_1 = {:first_name => "Jim", :last_name => "Jefferies", :salary => 70000, :active => true}
# employee_2 = {:first_name => "Maria", :last_name => "Bamford", :salary => 80000, :active => true}

# puts "#{employee_1[:first_name]} #{employee_1 [:last_name]} makes #{employee_1[:salary]} a year."
# puts "#{employee_2[:first_name]} #{employee_2 [:last_name]} makes #{employee_2[:salary]} a year."


class Employee
    attr_reader :first_name, :last_name, :salary, :active
    attr_writer :active 

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

    def active=(new_active)
      @active = new_active    #calling instance variable @active and assinging it to the new value
    end

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year"  # no @ here, you are now calling on the reader method
  end 

  def give_annual_raise
    @salary = @salary * 1.05
  end 

end

# employee_1 = Employee.new("Jim", "Jefferies", 70000, true)
# employee_2 = Employee.new("Maria", "Bamford", 80000, true)

employee_1 = Employee.new(
                           first_name: "Jim", 
                           last_name: "Jefferies", 
                           salary: 7000, 
                           active:  true
                           )  # you don't need {} because there are key value pairs already stated and ruby recognizes

employee_2 = Employee.new(first_name: "Maria",
                           last_name: "Bamford", 
                           salary: 8000, 
                           active: true
                           )

# employee_1.print_info
# employee_2.print_info
# employee_2.give_annual_raise
# employee_2.print_info
# puts employee_2.first_name
# puts employee_2.last_name
# puts employee_2.salary
# puts employee_2.active

puts employee_1.active
employee_1.active = false   # long hand written: employee_1.active=(false)
puts employee_1.active 
