class ChangeFieldsPostingsTable < ActiveRecord::Migration
  def up
    remove_column :postings, :type
    remove_column :postings, :name
    add_column :postings, :position, :string
    add_column :postings, :type_of, :string
  end

  def down
    add_column :postings, :type, :string
    add_column :postings, :name, :string
    remove_column :postings, :position
    remove_column :postings, :type_of
  end
end
