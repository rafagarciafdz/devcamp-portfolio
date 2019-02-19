class ApplicationController < ActionController::Base
	include DeviseWhitelist

	before_action :set_source

	def set_source
		if params[:q]
			session[:source] = params[:q]
		else
			session[:source] = nil
		end
	end
end
