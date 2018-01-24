class CreateSurveys < ActiveRecord::Migration[5.1]
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :email
      t.string :subscription
      t.string :payment

      t.timestamps
    end
  end
end
