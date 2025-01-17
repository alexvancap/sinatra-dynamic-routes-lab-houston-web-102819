require_relative 'config/environment'

class App < Sinatra::Base
  get ('/reversename/:name') do
    params[:name].reverse
  end

  get ('/square/:number') do
    num = params[:number]
    to_int = num.to_i
    squareroot = to_int ** 2
    squareroot.to_s
  end

  get ('/say/:number/:phrase') do
    number = params[:number].to_i
    phrase = params[:phrase]

    sentence = ""
    counter = 0

    while counter < number do
      sentence += phrase
      counter += 1
    end

    sentence
  end


  get('/say/:word1/:word2/:word3/:word4/:word5') do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get('/:operation/:number1/:number2') do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    result = 0
    
    if(operation == "add")
      result += num1 + num2
    elsif(operation == "subtract")
      result += num1 - num2
    elsif(operation == "multiply")
      result += num1 * num2
    else(operation == "divide")
      result += num1 / num2
    end

    return result.to_s
  end
end