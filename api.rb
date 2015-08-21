#!/usr/bin/env ruby

require 'sinatra'
require 'json'

get '/small' do
  content_type :json

  val = (0..rand(20)).reduce({}) do |map, i|
    map.merge("key#{i}" => i)
  end

  val.to_json
end
