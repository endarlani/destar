class VillageUser < ApplicationRecord
	mount_base64_uploader :picture, PictureUploader
	has_secure_password

	belongs_to :village

	has_many :detail_users
	has_and_belongs_to_many :products 
	has_and_belongs_to_many :services
end
