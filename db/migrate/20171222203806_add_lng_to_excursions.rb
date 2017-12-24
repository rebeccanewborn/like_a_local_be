class AddLngToExcursions < ActiveRecord::Migration[5.1]
  def change
    add_column :excursions, :lng, :float
  end
end
