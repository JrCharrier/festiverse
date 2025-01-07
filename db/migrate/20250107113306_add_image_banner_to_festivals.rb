class AddImageBannerToFestivals < ActiveRecord::Migration[7.1]
  def change
    add_column :festivals, :image_banner, :string
  end
end
