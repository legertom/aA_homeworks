class AddNickNametoPlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :nickname, :string
  end
end
