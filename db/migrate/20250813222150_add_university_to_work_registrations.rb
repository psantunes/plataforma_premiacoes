class AddUniversityToWorkRegistrations < ActiveRecord::Migration[8.0]
  def change
    add_reference :work_registrations, :university, foreign_key: true
  end
end
