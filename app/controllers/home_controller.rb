class HomeController < ApplicationController
	#transfer user to login page if they haven't signed in
	before_action :authenticate_user!
	#-----------------------------------------------------
	def index
		
	end
end
