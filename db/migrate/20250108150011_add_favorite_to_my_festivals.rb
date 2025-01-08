class AddFavoriteToMyFestivals < ActiveRecord::Migration[7.1]
  def change
    add_column :my_festivals, :favorite, :boolean, default: false
  end
end
