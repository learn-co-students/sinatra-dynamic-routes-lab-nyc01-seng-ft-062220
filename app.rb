require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end
  
  get '/square/:number' do
    square_root = params[:number].to_i
    square = square_root * square_root
    square.to_s
  end

  get '/say/:number/:phrase' do
    #binding.pry
    repititions = params[:number].to_i
    phrase = ''
    repititions.times do 
      phrase += "#{params[:phrase]}"
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if params[:operation] == "add"
      answer = num1 + num2
      answer.to_s
    elsif params[:operation] == "subtract"
      answer = num1 - num2
      answer.to_s
    elsif params[:operation] == "multiply"
      answer = num1 * num2
      answer.to_s
    elsif params[:operation] == "divide"
      answer = num1 / num2
      answer.to_s
    end
  end
end