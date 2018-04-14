class CreateBarters < ActiveRecord::Migration[5.1]
  def change
    create_table :barters do |t|
      t.references :product, foreign_key: true
      t.references :product_barter, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
