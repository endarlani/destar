class CreateDetailUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :detail_users do |t|
      t.references :village_user, foreign_key: true
      t.references :product, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
