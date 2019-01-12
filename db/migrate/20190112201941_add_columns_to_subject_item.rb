class AddColumnsToSubjectItem < ActiveRecord::Migration[5.2]
  def change
    add_column :subject_items, :title, :string
    add_column :subject_items, :teacher_id, :integer
  end
end
