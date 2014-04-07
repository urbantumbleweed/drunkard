FactoryGirl.define do

	factory :person, class: Person do
		first_name "John"
		last_name "Doe"
		birthdate {22.year.ago}
		img_url "http://placesheen.com/200/300"
		drinks 0
		license true
	end	

	factory :baby, class: Person do
		first_name "Baby"
		last_name "Face"
		birthdate {19.year.ago}
		img_url "http://placesheen.com/200/300"
		drinks 0
		license true
	end	
end