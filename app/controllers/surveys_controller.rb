class SurveysController < ApplicationController

  # GET /surveys/new
  def new
    @survey = Survey.new
    render "/2018/surveys/new", :layout => "2018/layouts/application"
  end

  # POST /surveys
  # POST /surveys.json
  def create
    @survey = Survey.new(survey_params)

    respond_to do |format|
      if @survey.save
        format.html { render :show }
        format.json { render :show, status: :created, location: @survey }
      else
        format.html { render :new }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      params.require(:survey).permit(:name, :email, :subscription, :payment)
    end
end
