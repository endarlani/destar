class ProductBarter < ApplicationRecord
  belongs_to :user
  has_many :barters

enum satuan: {
		kg: 'Kg',
		liter: 'Liter',
		buah: 'Buah',
		karung: 'Karung',
		ekor: "Ekor"
	}

  def user_id
		self.user.name		
	end
end
