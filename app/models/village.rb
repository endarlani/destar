class Village < ApplicationRecord
  belongs_to :admin
  has_many :village_users
end
