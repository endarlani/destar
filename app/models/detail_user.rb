class DetailUser < ApplicationRecord


  belongs_to :village_user
  belongs_to :product, optional: true
  belongs_to :service, optional: true
end
