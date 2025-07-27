class CreateCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :type_of_category

      t.timestamps
    end
  end
end
