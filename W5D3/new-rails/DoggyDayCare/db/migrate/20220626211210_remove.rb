class Remove < ActiveRecord::Migration[5.2]
  def change
    remove_column :toys, :color
  end
end
