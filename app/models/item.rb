class Item < ApplicationRecord
  has_many :sales

  def revenue
    sales.sum(:total)
  end
end
