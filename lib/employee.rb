# employee.rb

class Employee < ActiveRecord::Base
  belongs_to :store
end
