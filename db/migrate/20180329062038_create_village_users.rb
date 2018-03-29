class CreateVillageUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :village_users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :phone
      t.string :email
      t.text :location
      t.string :picture
      t.references :village, foreign_key: true

      t.timestamps
    end
  end
end
