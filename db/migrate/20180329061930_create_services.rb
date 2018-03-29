class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name
      t.integer :lowest_price
      t.date :date
      t.integer :rating
      t.integer :highest_price
      t.text :info
      t.string :picture
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
