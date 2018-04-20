class AddQuantityToProductBarter < ActiveRecord::Migration[5.1]
  def change
    add_column :product_barters, :quantity, :integer
    add_column :product_barters, :satuan, :string
  end
end
