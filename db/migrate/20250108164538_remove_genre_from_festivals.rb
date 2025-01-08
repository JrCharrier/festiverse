class RemoveGenreFromFestivals < ActiveRecord::Migration[7.1]
  def change
    remove_column :festivals, :genre, :string, array: true, default: []
  end
end
