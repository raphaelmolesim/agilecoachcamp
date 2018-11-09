class AdminController < ApplicationController

  http_basic_authenticate_with :name => "frodo", :password => "thering"
  
  def surveys
    @surveys = Survey.all
    render "2018/surveys/index", :layout => "2018/layouts/application"
  end
end
