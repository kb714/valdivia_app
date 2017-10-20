class AddPageIdToSliders < ActiveRecord::Migration[5.1]
  def change
    add_column :sliders, :page_id, :integer
  end
end
