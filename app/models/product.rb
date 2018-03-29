class Product < ApplicationRecord
	mount_base64_uploader :picture, PictureUploader
	
	belongs_to :category
	has_many :detail_users
	has_and_belongs_to_many :village_users
end
