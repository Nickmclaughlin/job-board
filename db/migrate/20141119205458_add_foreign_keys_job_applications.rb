class AddForeignKeysJobApplications < ActiveRecord::Migration
  def change
    add_column :job_applications, :user_id, :integer
    add_column :job_applications, :posting_id, :integer
  end
end
