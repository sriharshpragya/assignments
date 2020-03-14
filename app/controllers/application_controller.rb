class ApplicationController < ActionController::Base
	protect_from_forgery
	before_action :authenticate_user!

	private

	def auth_member!
   		not_found unless authenticate_user!
    end

	def not_found
    	render plain: '404 Not Found', status: 404
  	end
end
