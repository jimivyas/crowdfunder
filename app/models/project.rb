class Project < ActiveRecord::Base
	has_many :rewards
	has_many :donates
	belongs_to :owner, class_name: "User"

	accepts_nested_attributes_for :donates

end
