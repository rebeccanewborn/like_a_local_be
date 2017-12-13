class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :user_excursion_id
      t.float :host_rating
      t.text :host_review
      t.float :excursion_rating
      t.text :excursion_review

      t.timestamps
    end
  end
end
