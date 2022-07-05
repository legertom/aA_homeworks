class ChangeRacquetBrandToForeignKey < ActiveRecord::Migration[5.2]
  def change
    remove_column :racquets, :brand
    add_column :racquets, :brand_id, :integer, null:false
  end
end
