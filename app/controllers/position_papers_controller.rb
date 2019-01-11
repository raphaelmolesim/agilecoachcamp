class PositionPapersController < ApplicationController
  before_action :set_position_paper, only: [:edit, :update, :destroy, :show]

  before_action :authenticate, except: :show
  
  def authenticate
    @user_id = ENV['USER_ID'] || "frodo"
    @password = ENV['PASSWORD'] || "thering"
    authenticate_or_request_with_http_basic do |user_id, password|
      user_id == @user_id && password == @password
    end
  end

  # GET /position_papers
  # GET /position_papers.json
  def index
    @position_papers = PositionPaper.where(year: params[:year]).order(:order_index)
    render_based_by_year :index
  end

  # GET /position_papers/1
  # GET /position_papers/1.json
  def show
    render_based_by_year :show
  end

  # GET /position_papers/new
  def new
    @position_paper = PositionPaper.new
    render_based_by_year :new
  end

  # GET /position_papers/1/edit
  def edit
    render_based_by_year :edit
  end

  # POST /position_papers
  # POST /position_papers.json
  def create
    @position_paper = PositionPaper.new(position_paper_params)

    respond_to do |format|
      if @position_paper.save
        format.html { redirect_to @position_paper, notice: 'Position paper was successfully created.' }
        format.json { render :show, status: :created, location: @position_paper }
      else
        format.html { render_based_by_year :new }
        format.json { render json: @position_paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /position_papers/1
  # PATCH/PUT /position_papers/1.json
  def update
    respond_to do |format|
      if @position_paper.update(position_paper_params)
        format.html { redirect_to @position_paper, notice: 'Position paper was successfully updated.' }
        format.json { render :show, status: :ok, location: @position_paper }
      else
        format.html { render :edit }
        format.json { render json: @position_paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /position_papers/1
  # DELETE /position_papers/1.json
  def destroy
    @position_paper.destroy
    respond_to do |format|
      format.html { redirect_to position_papers_url, notice: 'Position paper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position_paper
      @position_paper = PositionPaper.where(permalink: params[:id]).first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def position_paper_params
      params.require(:position_paper).permit(:name, :year, :question_1, :question_2, :question_3, :photo_url, :order_index)
    end
    
    def render_based_by_year action
      year = params[:year]
      render "#{year}/position_papers/#{action}", layout: "#{year}/layouts/application.html.erb"
    end
end
