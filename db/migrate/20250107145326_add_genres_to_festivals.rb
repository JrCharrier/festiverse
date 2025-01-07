class AddGenresToFestivals < ActiveRecord::Migration[7.1]
  def change
    add_column :festivals, :genres, :string, array: true, default: []
  end
end
