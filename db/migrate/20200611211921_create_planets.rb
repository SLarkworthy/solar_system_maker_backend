class CreatePlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :composition
      t.string :size
      t.boolean :rings, null: false, default: false
      t.integer :solar_system_id

      t.timestamps
    end
  end
end
