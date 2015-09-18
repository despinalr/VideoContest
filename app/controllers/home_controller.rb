class HomeController < ApplicationController
  def index
  	@contests = Contest.order(created_at: :desc).all
  	@contests = @contests.paginate(:page => 1, :per_page => 10)
  	@idContest = 0
  end

  def about
    msg = {message: 'algo'}
    $redis.publish 'rt-change', msg.to_json
  end
end
