class UserRoleToInteger < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :role, 'integer USING CAST(role AS integer)'
  	change_column :users, :gender, 'integer USING CAST(role AS integer)'
  end
end
