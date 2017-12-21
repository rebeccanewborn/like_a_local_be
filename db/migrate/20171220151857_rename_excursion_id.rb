class RenameExcursionId < ActiveRecord::Migration[5.1]
  def change
    rename_column :user_excursions, :excursion_id, :excursion_occurrence_id
  end
end
