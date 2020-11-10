class CreateApiV1Carts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.integer :member_id
      t.string :total_cost_string, null: false, default: "$0.00"
      t.timestamps
    end
  end
end
