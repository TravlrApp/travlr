class User < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
	validates :password, presence: true, length: {minimum: 4, maximum: 20}
	has_many :posts
end
