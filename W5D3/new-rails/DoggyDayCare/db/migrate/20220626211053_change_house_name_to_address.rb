class ChangeHouseNameToAddress < ActiveRecord::Migration[5.2]
  def change
    rename_column :houses, :name, :address
  end
end
