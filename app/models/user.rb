class User < ActiveRecord::Base
	has_many :simulations
end
