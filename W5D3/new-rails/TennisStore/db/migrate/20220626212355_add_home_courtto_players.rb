class AddHomeCourttoPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :home_court, :string
    add_column :players, :play_style, :string
  end
end
