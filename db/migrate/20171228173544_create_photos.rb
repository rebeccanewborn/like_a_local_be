class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.integer :excursion_id
      t.integer :user_id

      t.timestamps
    end
  end
end
