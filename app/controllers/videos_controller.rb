class VideosController < ApplicationController
	def create
		Video.create(params.require(:video).permit(:nombre, :apellido, :email, :video, :contest_id))
		redirect_to root_path
	end
end
