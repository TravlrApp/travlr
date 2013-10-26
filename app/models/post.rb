class Post < ActiveRecord::Base
	validates :start_loc, presence: true
	validates :end_loc, presence: true
	validates :description, presence: true

	belongs_to :user
end
