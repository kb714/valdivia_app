class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :background_color
      t.text :content_right
      t.text :content_left
      t.boolean :animation_right
      t.boolean :animation_left
      t.integer :weight

      t.timestamps
    end
  end
end
