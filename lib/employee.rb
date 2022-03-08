# * Employees must always have a first name present
#   * Employees must always have a last name present
#   * Employees have a hourly_rate that is a number (integer) between 40 and 200
#   * Employees must always have a store that they belong to (can't have an employee that is not assigned a store)

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, presence: { message: "Must have name and store"}
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200, message: "Not a valid rate"}
  
  after_create :generate_password

  private 

  def generate_password
    self.password = (0...8).map { ('a'..'z').to_a[rand(26)] }.join
  end

end
