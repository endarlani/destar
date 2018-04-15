class User < ApplicationRecord
	belongs_to :village
	has_many :products
	has_many :product_barters

	has_secure_password

	validates :name, presence: true
	validates :phone, presence: true
	validates_uniqueness_of :phone
	validates :password, presence: true, length: { minimum: 6 }
	validates :role, presence: true

	enum role: [:admin,:seller,:customer]
	enum gender: [:male,:female]

	mount_uploader :picture, PictureUploader
end
