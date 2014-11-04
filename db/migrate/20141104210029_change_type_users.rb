class ChangeTypeUsers < ActiveRecord::Migration
  def up
    remove_column :users, :type
    add_column :users, :role, :string
  end

  def down
    add_column :users, :type, :string
    remove_column :users, :role
  end
end
