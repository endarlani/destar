class V1::ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :lowest_price, :highest_price, :info, :picture, :category_id
end
