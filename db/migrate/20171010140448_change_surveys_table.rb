class ChangeSurveysTable < ActiveRecord::Migration[5.1]
  def change
    change_column :surveys, :expiration, :timestamp
    add_column :surveys, :start_at, :timestamp, after: :description
  end
end
