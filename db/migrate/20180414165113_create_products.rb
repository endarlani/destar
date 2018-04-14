class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_type
      t.string :name
      t.integer :lowest_price
      t.integer :highest_price
      t.date :date
      t.string :status
      t.text :description
      t.string :picture
      t.references :user, foreign_key: true
      t.references :village, foreign_key: true

      t.timestamps
    end
  end
end
