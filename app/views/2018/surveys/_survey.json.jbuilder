json.extract! survey, :id, :name, :email, :subscription, :payment, :created_at, :updated_at
json.url survey_url(survey, format: :json)
