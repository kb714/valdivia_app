class AddApprovedToAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :data_stores, :approved, :boolean, default: false
  end
end
