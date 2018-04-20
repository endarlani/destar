class RemoveDescriptionFromProductBarter < ActiveRecord::Migration[5.1]
  def change
    remove_column :product_barters, :description, :text
  end
end
