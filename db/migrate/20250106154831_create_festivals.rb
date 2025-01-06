class CreateFestivals < ActiveRecord::Migration[7.1]
  def change
    create_table :festivals do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :genre
      t.text :description
      t.string :image_url
      t.text :line_up

      t.timestamps
    end
  end
end
