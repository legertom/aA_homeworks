class ChangeHomeCourtColumnInPlayers < ActiveRecord::Migration[5.2]
  def change
    remove_column :players, :home_court
    add_column :players, :home_court_id, :integer
  end
end
