class Order < ActiveRecord::Base
	
	belongs_to :user
	belongs_to :address

	has_many :order_items, dependent: :destroy

	def total
    	self.order_items.map(&:subtotal).sum
  	end

end
