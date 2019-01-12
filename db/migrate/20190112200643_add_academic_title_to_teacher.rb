class AddAcademicTitleToTeacher < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :academic_title, :string
  end
end
