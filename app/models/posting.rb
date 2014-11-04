class Posting < ActiveRecord::Base
  belongs_to :employer, class_name: "User"
  has_many :applicants
end
