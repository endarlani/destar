class DetailUser < ApplicationRecord
  belongs_to :village_user
  belongs_to :product
  belongs_to :service
end
