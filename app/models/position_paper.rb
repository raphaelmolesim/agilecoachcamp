class PositionPaper < ApplicationRecord
  has_permalink :name
  
  validates :name, :presence => true
  validates :year, :presence => true
  validates :photo_url, :presence => true
  
  before_update :update_permalink
  
  def filled_out?
    not (question_1 + question_2 + question_3).blank?
  end
  
  def path_with_year
    "/#{self.year}/position_papers/#{self.name.parameterize}"
  end
  
  
  private 
    def update_permalink
      self.generate_permalink!
    end
    
end
