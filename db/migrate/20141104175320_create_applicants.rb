class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.integer :applicant_id, null: false
      t.integer :posting_id, null: false

      t.timestamps
    end
  end
end
