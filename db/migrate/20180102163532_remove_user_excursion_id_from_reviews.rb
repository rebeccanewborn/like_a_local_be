class RemoveUserExcursionIdFromReviews < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :user_excursion_id
  end
end
