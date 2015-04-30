class Comment < ActiveRecord::Base
	has_ancestry

	validates_presence_of :comment, :email, :full_name
	validates :email, format: { 
		with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, 
		on: :create 
	}
	validates :full_name, length: {
		minimum: 2,
		maximum: 10,
		tokenizer: lambda { |str| str.scan(/\w+/) },
		too_short: "please enter your full name",
		too_long: "please enter just your first and last name"
	}
end
