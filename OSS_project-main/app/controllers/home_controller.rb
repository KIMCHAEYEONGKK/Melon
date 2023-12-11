class HomeController < ApplicationController
	def index
		@payuser = Payuser.new
		if user_signed_in? 
		@pay_t = Payuser.where(user_id: current_user.id).size > 0
		end
	end
end
