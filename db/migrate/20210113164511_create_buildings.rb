class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.string :address
      t.integer :units
      t.integer :openings
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
