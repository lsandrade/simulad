class User < ActiveRecord::Base
	has_many :simulations

	validates :name, presence: true
	validates :email, uniqueness: true, presence: true

	def teste
		"teste teste"
	end
end
