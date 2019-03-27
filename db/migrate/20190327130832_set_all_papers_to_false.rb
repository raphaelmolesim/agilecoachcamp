class SetAllPapersToFalse < ActiveRecord::Migration[5.1]
  def change
    @position_papers = PositionPaper.all.each { |p| p.raffled = false ; p.save! }
  end
end
