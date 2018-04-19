class UserRoleToInteger < ActiveRecord::Migration[5.1]
  def up
  	add_column("users", "role_temp", :integer)
  	add_column("users", "gender_temp", :integer)
  	User.all.map do |data|
  		status = [ "admin", "seller", "customer" ] 
  		data.role_temp = status.index(data.role)
  		gender = [ "male", "female" ]
  		data.gender_temp = status.index(data.gender) 
  	end
  	remove_column("users", "role")
  	remove_column("users", "gender")
  	rename_column("users", "role_temp", "role")
  	rename_column("users", "gender_temp", "gender")
  end

  def down
  	add_column("users", "role_temp", :string)
  	add_column("users", "gender_temp", :string)
  	User.all.map do |data|
  		status = [ "admin", "seller", "customer" ] 
  		data.role_temp = status[data.role]
  		gender = [ "male", "female" ]
  		data.gender_temp = status[data.gender] 
  	end
  	remove_column("users", "role")
  	remove_column("users", "gender")
  	rename_column("users", "role_temp", "role")
  	rename_column("users", "gender_temp", "gender")
  end
end
