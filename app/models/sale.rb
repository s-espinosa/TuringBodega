class Sale < ApplicationRecord
  belongs_to :item
  belongs_to :employee
  before_save :calculate_total

  def calculate_total
    sale_total = quantity * item.cost
    self.total = sale_total
  end
end
