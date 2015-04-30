class Comment < ActiveRecord::Base
	validates :comment, presence: true
	validates :email, presence: true
	validates :full_name, presence: true
	
end
