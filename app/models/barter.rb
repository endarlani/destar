class Barter < ApplicationRecord

	enum status: {
		pending: 'Pending',
		decline: 'Decline',
		process: 'Process',
		done: 'Done'

	}

	belongs_to :product
	belongs_to :product_barter
end
