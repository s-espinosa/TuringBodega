require 'rails_helper'

describe Employee do
  describe '#count_of_items_sold' do
    it 'returns a count of all items sold' do
      employee  = Employee.create(name: "Sal")
      employee2 = Employee.create(name: "Sam")
      item1     = Item.create(name: "Snickers", cost: 2, category: "snack")
      item2     = Item.create(name: "NY Post", cost: 4, category: "newspaper")
      Sale.create(employee: employee, item: item1, quantity: 2)
      Sale.create(employee: employee, item: item2, quantity: 1)
      Sale.create(employee: employee2, item: item1, quantity: 1)

      expect(employee.count_of_items_sold).to eq(3)
    end
  end

  describe '#list_of_items_sold' do
    it 'returns an array of item names' do
      employee  = Employee.create(name: "Sal")
      employee2 = Employee.create(name: "Sam")
      item1     = Item.create(name: "Snickers", cost: 2, category: "snack")
      item2     = Item.create(name: "NY Post", cost: 4, category: "newspaper")
      Sale.create(employee: employee, item: item1, quantity: 2)
      Sale.create(employee: employee, item: item2, quantity: 1)
      Sale.create(employee: employee2, item: item1, quantity: 1)

      expect(employee.list_of_items_sold).to eq(["Snickers", "NY Post"])
    end
  end

  describe '#total_sales' do
    it 'returns an employees total sales' do
      employee  = Employee.create(name: "Sal")
      employee2 = Employee.create(name: "Sam")
      item1     = Item.create(name: "Snickers", cost: 2, category: "snack")
      item2     = Item.create(name: "NY Post", cost: 4, category: "newspaper")
      Sale.create(employee: employee, item: item1, quantity: 2)
      Sale.create(employee: employee, item: item2, quantity: 1)
      Sale.create(employee: employee2, item: item1, quantity: 1)

      expect(employee.total_sales).to eq(8)
    end
  end
end
