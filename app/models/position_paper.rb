class PositionPaper < ApplicationRecord
  has_permalink :name
  
  validates :name, :presence => true
  validates :year, :presence => true
  validates :photo_url, :presence => true
  
  def filled_out?
    not (question_1 + question_2 + question_3).blank?
  end
  
end
