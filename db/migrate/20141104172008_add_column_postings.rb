class AddColumnPostings < ActiveRecord::Migration
  def change
    add_column :postings, :employer_id, :integer, null: false
  end
end
