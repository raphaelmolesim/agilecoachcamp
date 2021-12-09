class PapersController < ApplicationController
  
  def show
    render_based_by_year "#{params[:id]}.html.erb"
  end
  
  private 
    def render_based_by_year action
      year = params[:year]
      render "#{year}/papers/#{action}", layout: "#{year}/layouts/application.html.erb"
    end
  
end
