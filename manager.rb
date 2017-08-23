class Employee
  attr_reader :first_name, :last_name, :active, :salary
  attr_writer :active, :salary

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee_1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee_2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)

class Manager < Employee
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end
end

manager_1 = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee_1, employee_2])

p manager_1
manager_1.give_all_raises
manager_1.fire_all_employees
p employee_1.salary
p employee_1.active
