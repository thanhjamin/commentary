class Post < ActiveRecord::Base
	has_many :comments, as: :commentable

	validates :full_name, presence: true
	validates :email, presence: true
	validates :post, presence: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end

