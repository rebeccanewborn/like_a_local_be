class CreateExcursions < ActiveRecord::Migration[5.1]
  def change
    create_table :excursions do |t|
      t.string :title
      t.text :description
      t.string :duration
      t.string :price
      t.integer :city_id

      t.timestamps
    end
  end
end
