class PackSelectorController < ApplicationController
	def select
		session[:mod_pack_id] = params[:mod_pack_id]
		flash[:notice] = "Current mod_pack: #{}"
	end

	def deselect
		session[:mod_pack_id] = nil

	end
end
