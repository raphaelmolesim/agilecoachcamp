class CreatePositionPapers < ActiveRecord::Migration[5.1]
  def change
    create_table :position_papers do |t|
      t.string :name
      t.string :year
      t.text :question_1
      t.text :question_2
      t.text :question_3

      t.timestamps
    end
  end
end
