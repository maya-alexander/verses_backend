class AddOrderedDateStringToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :ordered_date_string, :string
    add_column :orders, :shipped_date_string, :string
  end
end
