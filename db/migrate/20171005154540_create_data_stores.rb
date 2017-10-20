class CreateDataStores < ActiveRecord::Migration[5.1]
  def change
    create_table :data_stores do |t|
      t.references :survey, foreign_key: true
      t.json :surveys

      t.timestamps
    end
  end
end
