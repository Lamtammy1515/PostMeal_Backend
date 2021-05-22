class RemoveMealIdFromComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :meal_id, :integer
  end
end
