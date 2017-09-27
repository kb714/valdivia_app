class CreateNavigations < ActiveRecord::Migration[5.1]
  def change
    create_table :navigations do |t|
      t.string :name
      t.string :url
      t.string :target
      t.integer :weight

      t.timestamps
    end
  end
end
