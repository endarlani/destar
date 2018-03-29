class VillageUser < ApplicationRecord
	has_secure_password
	
	belongs_to :village

	has_many :detail_users
	has_and_belongs_to_many :products 
	has_and_belongs_to_many :services
end
