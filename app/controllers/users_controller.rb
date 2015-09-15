class UsersController < ApplicationController
	
	def create
		User.create(params.require(:user).permit(:nombre, :apellido, :email, :password))
		
		users = User.where(email: params[:user][:email], password: params[:user][:password])
		
		if users.count == 1
			session[:user_name] = users[0].nombre
			session[:id] = users[0].id
		end

		redirect_to root_path
	end

	def auth
		users = User.where(email: params[:user][:email], password: params[:user][:password])
		
		if users.count == 1
			session[:user_name] = users[0].nombre
			session[:id] = users[0].id
		end

		redirect_to root_path
	end

	def logout
		session.clear
		redirect_to root_path
	end

end
