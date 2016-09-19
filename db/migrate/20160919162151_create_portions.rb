class CreatePortions < ActiveRecord::Migration
  def change
    create_table :portions do |t|
      t.references :food, index: true, foreign_key: true
      t.references :record, index: true, foreign_key: true
      t.integer :weight

      t.timestamps null: false
    end
  end
end
