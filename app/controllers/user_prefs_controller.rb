class UserPrefsController < ApplicationController

	def index
		@prefs = UserPrefs.all
	end

end
