require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    string = params[:name]
    string = string.split("")
    reversed = []
    string.each {|i| reversed.unshift(i)}
    "#{reversed.join("")}"
    #credit : https://medium.com/@PolinaHackTech/1-reverse-a-string-in-ruby-app-academy-prep-work-85a84d7d67bd
  end

  get '/square/:number' do
    #number = Math.sqrt(params[:number].to_i)
    number = params[:number].to_i * params[:number].to_i
    "#{number}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase].to_s
    number.times {"#{phrase}"}
  end




end