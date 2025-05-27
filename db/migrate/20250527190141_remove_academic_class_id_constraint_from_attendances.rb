class RemoveAcademicClassIdConstraintFromAttendances < ActiveRecord::Migration[7.1]
  def change
    change_column_null :attendances, :academic_class_id, true
  end
end
