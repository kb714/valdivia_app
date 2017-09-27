class CreateSurveys < ActiveRecord::Migration[5.1]
  def change
    create_table :surveys do |t|
      t.string :name
      t.text :description
      t.date :expiration

      t.timestamps
    end
  end
end
