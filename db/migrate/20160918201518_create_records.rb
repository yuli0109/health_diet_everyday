class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :user_id
      t.date :date_create
      t.integer :total_calorie

      t.timestamps null: false
    end
  end
end
