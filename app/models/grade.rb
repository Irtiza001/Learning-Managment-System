class Grade < ApplicationRecord
  belongs_to :user
  belongs_to :academic_class
  
  VALID_GRADES = ['A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'D+', 'D', 'F']
  
  validates :value, presence: true, inclusion: { in: VALID_GRADES, message: "must be a valid grade (A+ to F)" }
  validates :user_id, presence: true
  validates :academic_class_id, presence: true
end
