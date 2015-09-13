class HomeController < ApplicationController
  def index
  	@contests = Contest.order(created_at: :desc).all
  end

  def about
    msg = {message: 'algo'}
    $redis.publish 'rt-change', msg.to_json
  end
end
