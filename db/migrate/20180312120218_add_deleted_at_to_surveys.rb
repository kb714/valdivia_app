class AddDeletedAtToSurveys < ActiveRecord::Migration[5.1]
  def change
    add_column :surveys, :deleted_at, :datetime
  end
end
