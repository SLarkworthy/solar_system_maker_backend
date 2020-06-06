class CreateStars < ActiveRecord::Migration[6.0]
  def change
    create_table :stars do |t|
      t.string :name
      t.string :spectral_type
      t.integer :solar_system_id

      t.timestamps
    end
  end
end
