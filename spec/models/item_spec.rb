require 'rails_helper'

describe Item do
  describe '#revenue' do
    it 'returns the revenue for a given item' do
      snickers = Item.create(name: "Snickers", category: "snack", cost: 2)
      mars     = Item.create(name: "Mars", category: "snack", cost: 3)
      employee = Employee.create(name: "Sal")
      Sale.create(item: snickers, employee: employee, quantity: 2)
      Sale.create(item: snickers, employee: employee, quantity: 1)
      Sale.create(item: mars, employee: employee, quantity: 1)

      expect(snickers.revenue).to eq(6)
    end
  end

end
