class AddColumnsToSubjectItemNote < ActiveRecord::Migration[5.2]
  def change
    add_column :subject_item_notes, :student_id, :integer
    add_column :subject_item_notes, :subject_item_id, :integer
  end
end
