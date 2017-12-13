class CreateUserExcursions < ActiveRecord::Migration[5.1]
  def change
    create_table :user_excursions do |t|
      t.integer :user_id
      t.integer :excursion_id
      t.boolean :is_host

      t.timestamps
    end
  end
end
