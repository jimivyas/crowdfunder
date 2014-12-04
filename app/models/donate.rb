class Donate < ActiveRecord::Base
	belongs_to :donor, class_name: 'User'
	belongs_to :project
	# validates :amount, presence => true
end
