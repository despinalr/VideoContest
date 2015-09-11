class HomeController < ApplicationController
  def index
  	@contests = Contest.all
  end

  def about
    msg = {message: 'algo'}
    $redis.publish 'rt-change', msg.to_json
  end
end
