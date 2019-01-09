class AddPermalinkToPositionPaper < ActiveRecord::Migration[5.1]
  def self.up
    add_column :position_papers, :permalink, :string
    add_index :position_papers, :permalink
  end
  def self.down
    remove_column :position_papers, :permalink
  end
end