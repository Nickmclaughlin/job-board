class Posting < ActiveRecord::Base
  belongs_to :employer, class_name: "User"
  has_many :applicants
  has_many :job_applications
end
