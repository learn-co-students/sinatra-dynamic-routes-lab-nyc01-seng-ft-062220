require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse

    erb :reverse_name
  end

  get '/square/:number' do
    @sq_num = params[:number].to_i ** 2

    erb :square_number
  end

  get '/say/:number/:phrase' do
    @say = params[:phrase] * params[:number].to_i

    erb :num_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @str = [params[:word1],params[:word2],params[:word3],params[:word4],params[:word5]].join(" ")

    erb :all_word
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      @number = params[:number1].to_i + params[:number2].to_i
    when "subtract"
      @number = params[:number1].to_i - params[:number2].to_i
    when "divide"
      @number = params[:number1].to_i / params[:number2].to_i
    when "multiply"
      @number = params[:number1].to_i * params[:number2].to_i
    end
    
    erb :solve_problem
  end

 end