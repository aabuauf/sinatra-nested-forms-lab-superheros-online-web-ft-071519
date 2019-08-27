require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
   
    @teamName = params[:team][:name]
    @teamMotto = params[:team][:motto]
   @membersArray =  params[:team][:member]
    erb :team
  end
end
