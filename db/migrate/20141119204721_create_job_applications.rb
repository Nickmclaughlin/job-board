class CreateJobApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
      t.text :cover_letter
      t.text :resume
      t.string :citizen

      t.timestamps
    end
  end
end
