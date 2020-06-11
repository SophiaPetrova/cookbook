# frozen_string_literal: true

require 'sinatra'
require 'dotenv/load'
require 'haml'
require 'rdiscount'
require './helpers/api_calls'

get '/' do
  haml :index
end

get '/recipes/:recipe_id' do
  @recipe = show_recipe(params[:recipe_id])
  haml :show
end
