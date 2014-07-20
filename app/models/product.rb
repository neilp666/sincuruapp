class Product < ActiveRecord::Base
	

	validates_numericality_of :price
	validates :stock ,numericality: { greater_than_or_equal_to:  0 }

	has_many :order_items
end
