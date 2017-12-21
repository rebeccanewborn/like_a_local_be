class CreateExcursionOccurrences < ActiveRecord::Migration[5.1]
  def change
    create_table :excursion_occurrences do |t|
      t.datetime :time
      t.integer :excursion_id

      t.timestamps
    end
  end
end
