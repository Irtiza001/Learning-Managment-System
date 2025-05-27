class AddCourseAndStatusToAttendances < ActiveRecord::Migration[7.1]
  def change
    add_reference :attendances, :course, null: true, foreign_key: true
    add_column :attendances, :status, :string, default: "present"
  end
end
