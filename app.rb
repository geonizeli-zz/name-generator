# frozen_string_literal: true

require 'json'
require 'sinatra'
require 'sinatra/activerecord'

require './config/database'

Dir['./app/models/*.rb'].each { |file| require file }
Dir['./app/services/**/*.rb'].each { |file| require file }

class App < Sinatra::Base
  get '/compose' do
    push = JSON.parse(request.body.read)
    Compose.new push.try(:size)
  end

  post '/new' do
    position = params.try(:position)
    name = params.try(:name)

    if position == '1'
      FirstName.new(position: position, name: name)
      FirstName.save if FirstName.valid?
    elsif position == '2'
      LastName.new(position: position, name: name)
      LastName.save if FirstName.valid?
    else
      'invalid position'
    end
  end
end
