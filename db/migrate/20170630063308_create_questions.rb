class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :survey_id
      t.text :name
      t.text :description
      t.string :type
    end
  end
end
