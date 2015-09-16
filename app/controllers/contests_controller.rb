class ContestsController < ApplicationController
	def show
		@idContest = params[:id]
		@contests_filter = Contest.order(created_at: :desc).where(id: params[:id])

		if @contests_filter.count > 0
			@current_contest = @contests_filter[0]
		end

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

	def edit
		contest = Contest.find_by(params[:id])
		contest.nombre = params[:contest][:nombre]
		contest.url = params[:contest][:url]
		contest.fechainicio = params[:contest][:fechainicio]
		contest.fechafin = params[:contest][:fechafin]
		contest.premio = params[:contest][:premio]
		contest.image = params[:contest][:image]

		contest.save
		
		redirect_to root_path
	end
end
