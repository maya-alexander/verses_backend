class CreateApiV1Plans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.integer :items, unique: true
      t.monetize :price
      t.string :description
      t.text :features
      t.string :price_string
      t.timestamps
    end
  end
end
