class RemoveAcademicClassIdFromAttendances < ActiveRecord::Migration[7.1]
  def change
    remove_reference :attendances, :academic_class, foreign_key: true
  end
end
