class WelcomeController < ApplicationController

  def index
    render_based_by_year :index
  end

  def payment
    render_based_by_year :payment
  end
  
  def advertising
    render_based_by_year :advertising
  end
  
  def prestacao_contas
    render_based_by_year :prestacao_contas
  end
  
  def conteudo_gerado
    render_based_by_year :conteudo_gerado
  end
  
  private 
    def render_based_by_year action
      year = params[:year]
      render "#{year}/welcome/#{action}", layout: "#{year}/layouts/application.html.erb"
    end
  
end
