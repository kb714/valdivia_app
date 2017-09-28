class AddBannerToSurveys < ActiveRecord::Migration[5.1]
  def change
    add_column :surveys, :banner, :json
  end
end
