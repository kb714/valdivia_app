class AddFilesToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :banner, :json
    add_column :pages, :background_image, :json
  end
end
