class Product < ApplicationRecord

	enum product_type: {
		product: 'Product',
		jasa: 'Jasa'
	}

	enum status: {
		pending: 'Pending',
		decline: 'Decline',
		active: 'Active',
		nonactive: 'Nonactive'
	}

	belongs_to :user
	belongs_to :village
	has_many :barters
end
