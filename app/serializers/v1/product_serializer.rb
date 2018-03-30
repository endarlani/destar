class V1::ProductSerializer < ActiveModel::Serializer
  attributes :name, :price, :rating, :picture, :category_id
end
