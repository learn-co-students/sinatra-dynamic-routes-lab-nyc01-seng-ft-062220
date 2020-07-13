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
    test = []
    number.times {test << phrase}

    test.each do |item|
      "#{item}"
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = params[:word1] + ' ' + params[:word2] + ' ' + params[:word3] + ' ' + params[:word4] + ' ' + params[:word5] + '.'
    "#{words}"
  end

  get '/add/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    "#{number1 + number2}"
  end

  get '/subtract/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    "#{number2 - number1}"
  end

  get '/multiply/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    "#{number2 * number1}"
  end

  get '/divide/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    "#{number1 / number2}"
  end



end