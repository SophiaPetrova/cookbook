# frozen_string_literal: true

require 'net/http'
require 'uri'
require 'json'

module Sinatra
  module ApiCalls
    def recipes
      uri = URI.parse(ENV['BASE_URL'] + 'entries?content_type=recipe'\
                                        "&access_token=#{ENV['ACCESS_TOKEN']}"\
                                        '&select=sys.id,fields.title,fields.photo')
      JSON.parse(Net::HTTP.get(uri))
    end

    def image_url(image_id)
      uri = URI.parse(ENV['BASE_URL'] + "assets/#{image_id}?access_token=#{ENV['ACCESS_TOKEN']}")
      image = JSON.parse(Net::HTTP.get(uri))
      image['fields']['file']['url']
    end

    def show_recipe(recipe_id)
      uri = URI.parse(ENV['BASE_URL'] + "entries/#{recipe_id}?content_type=recipe"\
                                        "&access_token=#{ENV['ACCESS_TOKEN']}"\
                                        '&select=sys.id,fields.title,fields.photo,'\
                                        'fields.description,fields.calories,'\
                                        'fields.chef,fields.tags')
      JSON.parse(Net::HTTP.get(uri))
    end

    def chef_name(chef_id)
      uri = URI.parse(ENV['BASE_URL'] + "entries/#{chef_id}?content_type=recipe&access_token=#{ENV['ACCESS_TOKEN']}")
      JSON.parse(Net::HTTP.get(uri))
      chef = JSON.parse(Net::HTTP.get(uri))
      chef['fields']['name']
    end

    def tag_name(tag_id)
      uri = URI.parse(ENV['BASE_URL'] + "entries/#{tag_id}?content_type=recipe&access_token=#{ENV['ACCESS_TOKEN']}")
      JSON.parse(Net::HTTP.get(uri))
      tag = JSON.parse(Net::HTTP.get(uri))
      tag['fields']['name']
    end
  end
  helpers ApiCalls
end
