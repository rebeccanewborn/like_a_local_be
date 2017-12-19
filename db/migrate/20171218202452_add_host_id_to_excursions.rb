class AddHostIdToExcursions < ActiveRecord::Migration[5.1]
  def change
    add_column :excursions, :host_id, :integer
  end
end
