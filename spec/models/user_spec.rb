require 'rails_helper'

RSpec.describe User, type: :model do
	context "Validade do usuário" do
		#it "Usuario válido?" do
		#	user = User.new
		#	user.name = "Luan"
		#	user.email = "luan@email.com"
		#	user.encrypted_password = "dsadsadsadasdsadsadsadsa"
#
#			expect(user.valid?).to be_truthy
#			
#		end

		it "Usuario inválido?" do
			user = User.new
			user.name = "Luan"

			expect(user.valid?).to be_falsey			
		end

		it "Nome do usuário" do
			user = User.new
			user.name = "Luan"

			expect(user.name).to eql("Luan")			
		end
	end
end
