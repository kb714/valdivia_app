class ChangeBannerOnSurveys < ActiveRecord::Migration[5.1]
  def change
    change_column :surveys, :banner, :string
  end
end
