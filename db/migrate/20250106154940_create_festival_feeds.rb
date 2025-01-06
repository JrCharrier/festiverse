class CreateFestivalFeeds < ActiveRecord::Migration[7.1]
  def change
    create_table :festival_feeds do |t|
      t.references :user, null: false, foreign_key: true
      t.references :festival, null: false, foreign_key: true

      t.timestamps
    end
  end
end
