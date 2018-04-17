class ApplicationController < ActionController::API
	
	def current_user
		if(request.headers['Authorization'])
			User.find(JWT.decode(request.headers['Authorization'],  Rails.application.secrets.secret_key_base)[0]['user_id'])
		else 
			User.new()
		end
	end


	rescue_from CanCan::AccessDenied do |exception|
		render json: {error: exception}
	end
	rescue_from StandardError do |exception|
		render json: {error: exception}
	end
end
