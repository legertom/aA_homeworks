class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.float :usta_level
    end

    add_index :players, :name
  end
end
