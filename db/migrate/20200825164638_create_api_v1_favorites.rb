class CreateApiV1Favorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :member_id, null: false
      t.integer :product_id, null: false
      t.integer :size_id
      t.string :size_string
      

      t.timestamps
    end
  end
end
