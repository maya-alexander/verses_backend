class AddTotalCostStringToOrderItem < ActiveRecord::Migration[6.0]
  def change
    add_column :order_items, :total_cost_string, :string
  end
end
