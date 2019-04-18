require 'rails_helper'
RSpec.describe  User, type: :model do
 	#test user
	before(:all) do
	 User.delete_all
    User.create(email: "student@email.com", password: "password" )
    
    end
  
    let(:valid_user) { User.first }

	describe "has" do
        it "an email" do
          expect(valid_user.email).to eq "student@email.com"
		end
	end
	 describe "validates" do
      
		let(:bad_email) {User.new(email: "studentemailcom", password: "password", )}
		let(:no_password){User.new(email: "student@email.com")}

        it "the email" do
          expect(bad_email).to_not be_valid
		end
		it "the password" do
          expect(no_password).to_not be_valid
		end
    end
 end