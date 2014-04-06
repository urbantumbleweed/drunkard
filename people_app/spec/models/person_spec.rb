# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  img_url    :string(255)
#  birthdate  :date
#  drinks     :integer
#  license    :boolean
#

require "spec_helper"

describe Person do

	before(:each) do
		@person = FactoryGirl.create(:person)
	end

	describe ".create" do
		context "when created" do
			it "should have first name, last name, birthdate, img_url, zero drinks, and a licence" do
				expect(@person.valid?).to be_true
				expect(@person.first_name).to eq("John")
				expect(@person.last_name).to eq("Doe")
				expect(@person.birthdate).to_not be_nil
				expect(@person.img_url).to_not be_nil
				expect(@person.drinks).to eq(0)
				expect(@person.license).to be_true
			end
		end
	end

	describe "#name" do
		context "when requesting a person's name" do
			it "should return a string with the first and last name" do
				expect(@person.name).to eq("John Doe")
			end
		end
	end

	describe "#birthday" do
		context "when requesting a person's birthday" do
			it "should return a date in strng format" do
				expect(@person.birthday).to be_a(String)
			end
		end
	end


end
