class CreateFoodNutrientJoinTable < ActiveRecord::Migration
  def change
    create_join_table :foods, :nutrients do |t|
      # t.index [:food_id, :nutrient_id]
      # t.index [:nutrient_id, :food_id]
    end
  end
end
