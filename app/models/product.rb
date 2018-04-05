class Product < ApplicationRecord
	mount_base64_uploader :picture, PictureUploader
	
	validates :picture, presence: :true { message: "Iklan harus memiliki gambar" }
	
	belongs_to :category
	has_many :detail_users
	has_many :vilage_users, through: :detail_users


	def category_id
		self.category.name		
	end

end
