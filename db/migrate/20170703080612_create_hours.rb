class CreateHours < ActiveRecord::Migration[5.1]
  def change
    create_table :hours do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :subject
      t.text :description
      t.date :day
      t.time :hour

      t.timestamps
    end
  end
end
