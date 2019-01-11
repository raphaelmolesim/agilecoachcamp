class AddIndexToPositionPaper < ActiveRecord::Migration[5.1]
  def change
    add_column :position_papers, :order_index, :integer
  end
end
