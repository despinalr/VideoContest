class ContestsController < ApplicationController
	def show
		@idContest = params[:id]
		@contests_filter = Contest.order(created_at: :desc).where(id: params[:id])
		@contests = []

		if session[:id] != nil
			@videos = Video.order(created_at: :desc).where(contest_id: params[:id])
		else
			@videos = Video.order(created_at: :desc).where(contest_id: params[:id], estado: 1)
		end
	end

	def create
		Contest.create(params.require(:contest).permit(:nombre, :url, :fechainicio, :fechafin, :premio, :image))
		redirect_to root_path
	end

	def destroy
		Video.where(contest_id: params[:contest][:id]).destroy_all
		Contest.find(params[:contest][:id]).destroy
		redirect_to root_path
	end
end
