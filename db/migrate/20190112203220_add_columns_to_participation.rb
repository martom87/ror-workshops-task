class AddColumnsToParticipation < ActiveRecord::Migration[5.2]
  def change
    add_column :participations, :student_id, :integer
    add_column :participations, :subject_item_id, :integer
  end
end
