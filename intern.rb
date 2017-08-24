require_relative "employee"
require_relative "reportable"

module Actualize
  class Intern < Employee
    include Reportable
  end
end
