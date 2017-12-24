class AddAddressToExcursions < ActiveRecord::Migration[5.1]
  def change
    add_column :excursions, :address, :string
  end
end
