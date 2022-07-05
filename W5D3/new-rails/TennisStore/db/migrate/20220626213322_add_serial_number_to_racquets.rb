class AddSerialNumberToRacquets < ActiveRecord::Migration[5.2]
  def change
    add_column :racquets, :serial_number, :string, null:false, default: false
    add_index :racquets, :serial_number
  end
end
