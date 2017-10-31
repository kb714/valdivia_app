class CreateSurveyFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :survey_files do |t|
      t.references :survey, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
