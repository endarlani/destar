class V1::ProductSerializer < ActiveModel::Serializer
  attributes :name, :picture, :price, :rating, :info, :category_id

  #   attribute :village_user do
  # 	detail = []
  # 	object.village_users.each do |data|
  # 		current = data.as_json(only: [:name])
  # 		detail.push(current)
  # 	end
  # 	 detail
  # end
end
