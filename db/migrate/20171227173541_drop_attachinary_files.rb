class DropAttachinaryFiles < ActiveRecord::Migration[5.1]
  def up
    drop_table :attachinary_files
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
