class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :maker,               null: false
      t.string :vehicle_type,        null: false
      t.string :grade,               null: false
      t.string :model,               null: false
      t.integer :model_year,         null: false
      t.integer :mileage,            null: false
      t.integer :market_price,       null: false
      t.timestamps
    end
  end
end
