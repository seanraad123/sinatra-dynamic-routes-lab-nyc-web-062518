require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name = @name.reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number= params[:number]
    @number = @number.to_i
    @number = @number ** 2
    @number = @number.to_s
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @number= params[:number]
    @phrase= params[:phrase]
    @number = @number.to_i
    array = []
    @number.times do
      array << @phrase
    end
    array
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    @number1 = @number1.to_i
    @number2 = @number2.to_i

    if @operation == "add"
      @number3 = @number1 + @number2
      @number3.to_s
    elsif @operation == "subtract"
      @number3 = @number1 - @number2
      @number3.to_s
    elsif @operation == "multiply"
      @number3 = @number1 * @number2
      @number3.to_s
    elsif @operation == "divide"
      @number3 = @number1 / @number2
      @number3.to_s
    end
  end
end
