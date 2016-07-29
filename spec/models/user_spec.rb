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

	# capybara
	context "testando a view user" do
		it "Cadastrar um usuário no Signup" do
		  visit '/users/sign_up'
		  within("#new_user") do
		    fill_in 'Email', :with => 'user@example.com'
		  	fill_in 'Password', :with => '123456'
		  	fill_in 'Password confirmation', :with => '123456'
		  end
		  click_button 'Sign up'
		  expect(page).to have_content 'Usuário cadastrado com sucesso'
		end
	end
end
