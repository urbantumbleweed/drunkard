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

class Person < ActiveRecord::Base

	def name
		return "#{self.first_name} #{self.last_name}"
	end

	def birthday
		return self.birthdate.to_s
		
	end
	
end
