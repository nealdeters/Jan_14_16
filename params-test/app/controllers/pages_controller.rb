class PagesController < ApplicationController
  def home
    # @name = params[:name].upcase

    @message = ""

    # if @name[0] == "A"
    #   @message = "Hey, your name starts with the first letter of the alphabet!"
    # end

    @random_num = rand(1..100)
    @number = params[:number]
    @number = @number.to_i

    if @number == @random_num
      @message = "You guessed correctly!"
    else
      if @number > @random_num
        @message = "You guessed too high."
      elsif @number < @random_num
        @message = "You guessed too low."
      end
    end

  end
end
