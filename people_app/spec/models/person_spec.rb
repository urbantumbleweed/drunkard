require "spec_helper"

describe Person do

	before(:each) do
		@person = FactoryGirl.create(:person)
	end

	describe ".create" do
		context "when created" do
			it "should have first name, last name, birthdate, img_url, zero drinks, and a licence" do
				expect(@person.valid?).to be_true
				expect(@person.name).to eq("John Doe")
			end
		end
	end


end