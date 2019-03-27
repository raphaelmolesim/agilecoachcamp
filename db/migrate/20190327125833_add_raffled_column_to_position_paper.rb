class AddRaffledColumnToPositionPaper < ActiveRecord::Migration[5.1]
  def change
    add_column :position_papers, :raffled, :boolean
  end
end
