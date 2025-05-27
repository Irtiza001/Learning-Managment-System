class Attendance < ApplicationRecord
  belongs_to :course, optional: true
  # belongs_to :academic_class - removed
  
  validates :status, inclusion: { in: %w(present absent) }, allow_nil: true
  validates :date, presence: true
end
