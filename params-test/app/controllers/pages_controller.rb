class PagesController < ApplicationController
  def number
    @message = ""

    #@random_num = rand(1..100)
    random_num = session[:random] ||= rand(1..100)
    @number = params[:number]
    @number = @number.to_i

    if @number == random_num
      @message = "You guessed correctly!"
    else
      if @number > random_num
        @message = "You guessed too high."
      elsif @number < random_num
        @message = "You guessed too low."
      end
    end

  end

  def name
    @name = params[:name].upcase

    #@message = ""

    if @name.starts_with?('A')
    # if @name[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
  end

  def url_example
    @message = params[:wildcard]
  end
end
