class AddPlayerIDtoRacquets < ActiveRecord::Migration[5.2]
  def change
    add_column :racquets, :player_id, :integer, null: false, default: false
  end
end
