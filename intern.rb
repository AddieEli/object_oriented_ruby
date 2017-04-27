module Actualize
require "./employee1.rb"
require "./reporting.rb"

class Intern < Employee
 include Reporting
end 

end