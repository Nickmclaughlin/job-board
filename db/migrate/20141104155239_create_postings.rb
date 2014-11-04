class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :name
      t.text :description
      t.text :benefits
      t.string :type
      t.string :salary
      t.date

      t.timestamps
    end
  end
end
