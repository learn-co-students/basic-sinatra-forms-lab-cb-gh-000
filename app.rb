require 'sinatra/base'

class App < Sinatra::Base
  get "/newteam" do
    erb :newteam
  end

  post "/team" do
    @center = params[:c]
    @coach = params[:coach]
    @point_guard = params[:pg]
    @power_forward = params[:pf]
    @shooting_guard = params[:sg]
    @small_forward = params[:sf]
    @team_name = params[:name]

    erb :team
  end
end
