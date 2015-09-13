class ContestsController < ApplicationController
	def show
		@contests_filter = Contest.order(created_at: :desc).where(id: params[:id])
		@contests = []
		@videos = Video.order(created_at: :desc).where(contest_id: params[:id])
	end

	def create
		Contest.create(params.require(:contest).permit(:nombre, :url, :fechainicio, :fechafin, :premio, :image))
		redirect_to root_path
	end
end
