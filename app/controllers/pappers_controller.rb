class PappersController < ApplicationController
  
  def show
    render "#{params[:id]}.html.erb"
  end
  
end
