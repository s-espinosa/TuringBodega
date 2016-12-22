class AddTotalToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :total, :integer
  end
end
