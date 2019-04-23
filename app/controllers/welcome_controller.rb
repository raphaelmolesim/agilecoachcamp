class WelcomeController < ApplicationController

  def index
    @apiKey = ENV['GOOGLE_MAPS_APIKEY']
    @position_papers = PositionPaper.where(year: params[:year]).order(:order_index)
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
  
  def accountability
    render_based_by_year :accountability
  end
  
  def conteudo_gerado
    render_based_by_year :conteudo_gerado
  end
  
  def shared_room
    @room_option = :shared
    render_based_by_year :room_options
  end
  
  def submission
    render_based_by_year :submission
  end
  
  def raffle
    @raffled = PositionPaper.where(year: params[:year], raffled: true).order(:order_index)
    @available = PositionPaper.where(year: params[:year], raffled: false).order(:order_index)
    render_based_by_year :raffle
  end
  
  def pick
    @available = PositionPaper.where(year: params[:year], raffled: false).order(:order_index)
    if not @available.empty?
      if params[:id]
        @pick = PositionPaper.find(params[:id])
      else
        if @available.size > 1
          @pick = @available[Random.rand(0...(@available.size - 1))]
        else
          @pick = @available.first
        end
      end
      @pick.raffled = true
      @pick.save!
    end
    
    @raffled = PositionPaper.where(year: params[:year], raffled: true).order(:order_index)
    @available = PositionPaper.where(year: params[:year], raffled: false).order(:order_index)
    render_based_by_year :raffle
  end
  
  def unpick    
    unpick = PositionPaper.find(params[:id])
    unpick.raffled = false
    unpick.save
    
    @raffled = PositionPaper.where(year: params[:year], raffled: true).order(:order_index)
    @available = PositionPaper.where(year: params[:year], raffled: false).order(:order_index)
    
    render_based_by_year :raffle
  end
  
  def comming_soon
    render "#{params[:year]}/welcome/comming_soon", layout: "#{params[:year]}/layouts/comming_soon_layout.html.erb"
  end
  
  private 
    def render_based_by_year action
      year = params[:year]
      render "#{year}/welcome/#{action}", layout: "#{year}/layouts/application.html.erb"
    end
  
end
