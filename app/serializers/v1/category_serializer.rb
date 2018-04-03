class V1::CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  attribute :product do
  	produk = []
  	object.products.each do |data|
  		current = data.as_json(only: [:name, :price, :rating])
  		produk.push(current)
  	end
  	 produk
  end

end
