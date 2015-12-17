class ApplicationController < ActionController::Base
# Prevent CSRF attacks by raising an exception.
# For APIs, you may want to use :null_session instead.
protect_from_forgery with: :exception

private
	def current_mod_pack
		@current_mod_pack ||= ModPack.find(session[:mod_pack_id]) if session[:mod_pack_id]
	end

	def require_mod_pack
		unless current_mod_pack
	  		flash[:notice] = "You must choose a mod pack to access that page!"
		  	redirect_to pack_selector_select_path
		  	return false
		end
	end
end
