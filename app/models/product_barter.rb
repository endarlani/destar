class ProductBarter < ApplicationRecord
  belongs_to :user
  has_many :barters


  def user_id
		self.user.name		
	end
end
