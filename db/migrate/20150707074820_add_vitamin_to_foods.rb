class AddVitaminToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :vitamin, :string
  end
end
