class DropAdmins < ActiveRecord::Migration[6.1]
  def up
    drop_table :admins
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
