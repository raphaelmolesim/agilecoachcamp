class AdminController < ApplicationController

  http_basic_authenticate_with :name => "frodo", :password => "thering"
  
  def surveys
    @surveys = Survey.all
    render "surveys/index"
  end
end
