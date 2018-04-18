class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :role
      t.string :password_digest
      t.string :phone
      t.string :gender
      t.string :picture
      t.references :village, foreign_key: true

      t.timestamps
    end
  end
end
