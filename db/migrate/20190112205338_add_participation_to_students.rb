class AddParticipationToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :participation_id, :integer
  end
end