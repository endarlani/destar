class CreateOutsiderUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :outsider_users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :picture

      t.timestamps
    end
  end
end
