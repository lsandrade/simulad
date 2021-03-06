class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :simulations

	#validates :name, presence: true
	validates :email, uniqueness: true, presence: true

	has_attached_file :avatar, style: { medium: "300x300", thumb: "100x100" }
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

	def teste
		"teste teste"
	end

	def self.search(query)
		where("name like ?","%#{query}%")
	end
end
