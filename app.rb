require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do # this is the 'get' request 
    params[:name].reverse  # takes in paramater of name and .reverse it 
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do  # 'get' request
    answer = '' # setting a variable

    params[:number].to_i.times do # setting paramater
      answer += params[:phrase] # putting the paramater 'phrase' as the answer string
    end
    answer # returining the new string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do  # this is DYNAMIC accepting up to 5 words 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
  end

end