class ProductBarter < ApplicationRecord
  belongs_to :user
  has_many :barters
end
