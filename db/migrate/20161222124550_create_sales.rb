class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.references :item, foreign_key: true
      t.references :employee, foreign_key: true
    end
  end
end
