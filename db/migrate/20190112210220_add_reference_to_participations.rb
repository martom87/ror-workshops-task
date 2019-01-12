class AddReferenceToParticipations < ActiveRecord::Migration[5.2]
  def change
    add_reference :participations, index: true, foreign_key: true
  end
end
