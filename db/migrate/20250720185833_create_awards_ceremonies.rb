class CreateAwardsCeremonies < ActiveRecord::Migration[8.0]
  def change
    create_table :awards_ceremonies do |t|
      t.string :name, null: false
      t.integer :edition, null: false
      t.integer :year, null: false

      t.date :registration_opening_date
      t.date :registration_closing_date
      t.date :award_ceremony_date
      t.boolean :opening_vote_phase, default: false
      t.boolean :closing_vote_phase, default: false
      t.boolean :generate_lists, default: false

      t.timestamps
    end
  end
end
