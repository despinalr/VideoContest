class ContestsController < ApplicationController
	def create
		#Contest.create(params.require(:contest).permit(:nombre, :url, :fechainicio, :fechafin, :premio))
		Contest.create(params.require(:contest).permit(:nombre, :url, :premio))
		redirect_to root_path
	end
end
