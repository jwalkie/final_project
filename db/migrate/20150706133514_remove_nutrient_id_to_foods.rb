class RemoveNutrientIdToFoods < ActiveRecord::Migration
  def change
    remove_column :foods, :nutrient_id, :integer
  end
end
