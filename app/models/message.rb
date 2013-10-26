class Message < ActiveRecord::Base
	validates :subject, presence: true
	validates :body, presence: true
	validates :receiver_username, presence: true

	belongs_to :user
end
