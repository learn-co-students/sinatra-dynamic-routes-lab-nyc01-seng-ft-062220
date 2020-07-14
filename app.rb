require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

    get '/reversename/:name' do 
      @rev = params[:name].reverse
    end

    get '/square/:number' do 
      @output = (params[:number].to_i ** 2).to_s
    end 

    get '/say/:number/:phrase' do
      @phase = ""
      params[:number].to_i.times do 
        @phase += params[:phrase]
      end
      @phase
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      @output = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

    get '/:operation/:number1/:number2' do
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
      
      @output = ""
        case params[:operation]
        when 'add' 
          @output = (@num1 + @num2).to_s
        when 'subtract'
          @output = (@num1 - @num2).to_s
        when 'multiply'
          @output = (@num1 * @num2).to_s
        when 'divide'
          @output = (@num1 / @num2).to_s
        end
    end

end