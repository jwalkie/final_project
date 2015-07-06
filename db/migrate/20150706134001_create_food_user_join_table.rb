class CreateFoodUserJoinTable < ActiveRecord::Migration
  def change
    create_join_table :foods, :users do |t|
      # t.index [:food_id, :user_id]
      # t.index [:user_id, :food_id]
    end
  end
end
