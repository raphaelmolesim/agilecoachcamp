class PapersController < ApplicationController
  
  def show
    render "#{params[:id]}.html.erb"
  end
  
end
