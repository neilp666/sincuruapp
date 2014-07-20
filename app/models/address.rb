class Address < ActiveRecord::Base

	belongs_to :user
	has_many :orders


	def to_s
		[line1, line2, "{city}, #{county} #{postcode}"].compact.join(", ")
	end

end
