class RemoveUserIdFromAttendances < ActiveRecord::Migration[7.1]
  def change
    remove_column :attendances, :user_id, :bigint
  end
end
