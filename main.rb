require_relative "employee"
require_relative "reportable"
require_relative "manager"
require_relative "intern"

employee_1 = Actualize::Employee.new(
                          first_name: "Luke",
                          last_name: "Chirayil",
                          salary: "1",
                          active: false
                          )

manager_1 = Actualize::Manager.new(
                          first_name: "Elizaibeth",
                          last_name: "P",
                          salary: "10",
                          active: true
                          )

intern_1 = Actualize::Intern.new(
                          first_name: "Sanj",
                          last_name: "Super",
                          salary: "0",
                          active: true
                          )

intern_1.send_report
