employee_1 = {first_name: "Jimmy", last_name: "Stewart", salary: 70000, active: true}
employee_2 = {first_name: "Susan", last_name: "Messing", salary: 80000, active: true}

puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes $#{employee_1[:salary]} a year."
puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes $#{employee_2[:salary]} a year."

class Employee
  def initialize(first_name, last_name, salary, active)
    @first_name = first_name
    @last_name = last_name
    @salary = salary
    @active = active
  end

  def get_first_name
    return @first_name
  end

  def info
    return "#{@first_name} #{@last_name} makes $#{@salary} a year."
  end

end

employee_1 = Employee.new("Robert", "Stewart", 90000, true)

p employee_1.info
