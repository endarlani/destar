class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.bigint :price
      t.date :date
      t.integer :rating
      t.text :info
      t.string :picture
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
