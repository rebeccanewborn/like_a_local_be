class AddLatToExcursions < ActiveRecord::Migration[5.1]
  def change
    add_column :excursions, :lat, :float
  end
end
