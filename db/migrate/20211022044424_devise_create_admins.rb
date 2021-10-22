# frozen_string_literal: true

class DeviseCreateAdmins < ActiveRecord::Migration[6.1]
  def up
    drop_table :admin
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
