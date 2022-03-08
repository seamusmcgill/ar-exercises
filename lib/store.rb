#   * Stores must always have a name that is a minimum of 3 characters
# * Stores have an annual_revenue that is a number (integer) that must be 0 or more
# * BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a [custom validation method](http://guides.rubyonrails.org/active_record_validations.html#custom-methods) - **don't** use a `Validator` class)


class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3, message: "Must have a name longer than 2 characters" }
  validates :annual_revenue, numericality: { greater_than: 0, message: "Must have positive revenue" }

  validate :must_carry_womens_or_mens_apparel
  before_destroy :check_employees, prepend: true

  private

  def must_carry_womens_or_mens_apparel
    if !womens_apparel && !mens_apparel
      errors.add(:womens_apparel, "Must sell one")
    end
  end

  def check_employees
    if Employee.where(store_id: self.id).count >= 1
      errors.add(:employees, "Can't delete store with more than one employee")
      return false
    end
  end

end
