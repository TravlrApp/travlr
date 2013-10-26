class User < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true, length: {minimum: 4, maximum: 20}
	has_many :posts
end
