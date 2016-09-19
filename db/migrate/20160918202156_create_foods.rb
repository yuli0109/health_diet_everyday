class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :category
      t.integer :calorie
      t.float :fat
      t.float :protein

      t.timestamps null: false
    end
  end
end
