class AddPhotoToPositionPaper < ActiveRecord::Migration[5.1]
  def change
    add_column :position_papers, :photo_url, :string
  end
end
