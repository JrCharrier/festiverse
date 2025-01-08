class AddParticipatingToMyFestivals < ActiveRecord::Migration[7.1]
  def change
    add_column :my_festivals, :participating, :boolean, default: false
  end
end
