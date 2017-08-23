employee_1 = {first_name: "Jimmy", last_name: "Stewart", salary: 70000, active: true}
employee_2 = {first_name: "Susan", last_name: "Messing", salary: 80000, active: true}

# puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes $#{employee_1[:salary]} a year."
# puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes $#{employee_2[:salary]} a year."


class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name, :last_name, :salary, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def give_annual_raise
    @salary = @salary * 1.10
  end

  def info
    return "#{@first_name} #{@last_name} makes $#{@salary} a year."
  end

end

class Manager < Employee

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending Email..."
    #....
    puts "Email Sent"
  end

  def give_all_raises
    @employees.each do |i|
      i.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |i|
      i.active = false
    end
  end




end


employee_1 = Employee.new(
                          first_name: "Robert",
                          last_name: "Stewart",
                          salary: 90000,
                          active: true
                          )

manager_1 = Manager.new(
                          first_name: "Luke",
                          last_name: "Stewart",
                          salary: 90000,
                          active: true,
                          employees: [employee_1]
                          )


p employee_1.info
employee_1.first_name = "Luke"
employee_1.salary = 1000000
p manager_1
manager_1.give_all_raises
p manager_1
p employee_1.salary
manager_1.fire_all_employees
p employee_1.active
