require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      @team = Team.new(params["team"])
      @hero_1 = Hero.new(params["team"]["members"][0])
      @hero_2 = Hero.new(params["team"]["members"][1])
      @hero_3 = Hero.new(params["team"]["members"][2])
      erb :super_hero
    end


end
