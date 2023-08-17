class Course < ApplicationRecord
  belongs_to :college

  validates :name, presence: true, uniqueness: {scope: :college_id, message: "Course name already exit"}
  # validates :name, uniqueness: :college_id
end
