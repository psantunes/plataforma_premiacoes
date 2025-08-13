class CreateCoapplicants < ActiveRecord::Migration[8.0]
  def change
    create_table :coapplicants do |t|
      t.belongs_to :work_registration, null: false, foreign_key: true
      t.string :full_name, null: false
      t.timestamps
    end
  end
end
