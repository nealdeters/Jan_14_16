class PagesController < ApplicationController
  def get_example
    @message = params[:message]
  end
end
