class UsersController < ApplicationController
	
	def create
		User.create(params.require(:user).permit(:nombre, :apellido, :email, :password))
		redirect_to root_path
	end

end
