class AddQuantityToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :quantity, :integer
  end
end
