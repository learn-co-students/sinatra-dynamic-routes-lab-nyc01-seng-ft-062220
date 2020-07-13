require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @ans = @num ** 2
    "#{@ans}"
  end

  get '/say/:number/:phrase' do
      @ans = params[:phrase] * params[:number].to_i
    "#{@ans}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @ans = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@ans}"
  end

  get '/:operation/:number1/:number2' do
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i

    ans = "Unable to perform this operation"

    if params[:operation] == "add"
        ans = (@n1 + @n2).to_s
    elsif params[:operation] == "subtract"
        ans = (@n1 - @n2).to_s
    elsif params[:operation] == "multiply"
       ans =  (@n1 * @n2).to_s
    elsif params[:operation] == "divide"
       ans =  (@n1 / @n2).to_s
    end
      
  end

end