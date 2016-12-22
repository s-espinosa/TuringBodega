class Employee < ApplicationRecord
  has_many :sales
  has_many :items, through: :sales

  def total_sales
    sales.sum(:total)
  end

  def count_of_items_sold
    sales.sum(:quantity)
  end

  def list_of_items_sold
    items.pluck(:name)
  end
end
