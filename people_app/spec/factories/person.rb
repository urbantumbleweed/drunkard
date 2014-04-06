FactoryGirl.define do

	factory :person, class: Person do
		first_name "John"
		last_name "Doe"
		birthdate "1999-12-31"
		img_url "http://placesheen.com/200/300"
	end	
end