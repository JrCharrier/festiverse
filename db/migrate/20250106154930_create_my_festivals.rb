class CreateMyFestivals < ActiveRecord::Migration[7.1]
  def change
    create_table :my_festivals do |t|
      t.references :user, null: false, foreign_key: true
      t.references :festival, null: false, foreign_key: true

      t.timestamps
    end
  end
end
