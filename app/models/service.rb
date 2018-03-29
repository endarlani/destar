class Service < ApplicationRecord
  belongs_to :category
  has_many :detail_users
  has_and_belongs_to_many :village_users
end
