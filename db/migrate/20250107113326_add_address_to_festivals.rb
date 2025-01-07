class AddAddressToFestivals < ActiveRecord::Migration[7.1]
  def change
    add_column :festivals, :address, :string
  end
end
