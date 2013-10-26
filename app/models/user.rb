class User < ActiveRecord::Base
	validates :user_name, presence: true, uniqueness: true
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :age, presence: true
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true, length: {minimum: 4, maximum: 20}

	has_many :posts
	has_many :messages
end
