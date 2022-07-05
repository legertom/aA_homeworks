class CreateRacquets < ActiveRecord::Migration[5.2]
  def change
    create_table :racquets do |t|
      t.string :brand, null: false
      t.string :model_name, null: false
      t.integer :weight
      t.float :price
      t.string :string_pattern
    end

    add_index :racquets, :model_name
  end
end
