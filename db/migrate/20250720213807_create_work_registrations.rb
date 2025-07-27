class CreateWorkRegistrations < ActiveRecord::Migration[8.0]
  def change
    create_table :work_registrations do |t|
      t.references :applicants, foreign_key: true
      t.string :title
      t.string :category

      t.text :description

      t.string :work_link
      t.string :work_attachment

      t.timestamps
    end
  end
end
