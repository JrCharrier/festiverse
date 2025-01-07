class ChangeGenreToArrayInFestivals < ActiveRecord::Migration[7.1]
  def up
    change_column :festivals, :genre, :string, array: true, default: [], using: 'string_to_array(genre, \',\')'
  end

  def down
    change_column :festivals, :genre, :string, using: 'array_to_string(genre, \', \')'
  end
end
