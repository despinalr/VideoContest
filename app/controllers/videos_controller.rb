class VideosController < ApplicationController
	def create
		Video.create(params.require(:video).permit(:nombre, :apellido, :email, :video, :contest_id, :estado))
		session[:message] = "Hemos recibido tu video y lo estamos procesando para que sea publicado. Gracias por Participar!!!"
		redirect_to root_path
	end
end
