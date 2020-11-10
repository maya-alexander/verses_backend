class CreateApiV1Orders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :number
      t.integer :plan_membership_id
      t.integer :member_id
      t.datetime :ordered_date
      t.datetime :shipped_date
      t.index :member_id
      t.money :tax
      t.money :sub_total
      t.money :shipping_cost
      t.money :total_cost
      t.string :total_cost_string
      t.string :sub_total_string
      t.string :tax_string
      t.string :shipping_cost_string
      t.timestamps
    end
  end
end
