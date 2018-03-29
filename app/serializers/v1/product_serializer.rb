class V1::ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :info, :date, :rating, :picture
end
