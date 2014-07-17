class Order < ActiveRecord::Base

	has_many :order_items, dependent: :destroy

	def total
    	self.order_items.map(&:subtotal).sum
  	end

end
