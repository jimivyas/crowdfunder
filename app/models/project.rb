class Project < ActiveRecord::Base
	has_many :rewards
	has_many :donates
	belongs_to :user

end
