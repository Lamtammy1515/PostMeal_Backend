class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :title
      t.string :description
      t.string :meal_time
      
      t.timestamps
    end
  end
end
