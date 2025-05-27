class Course < ApplicationRecord
  has_many :attendances, dependent: :nullify
  
  validates :name, presence: true
end
