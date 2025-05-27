class AddInstructorNameToCourses < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :instructor_name, :string
  end
end
