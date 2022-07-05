class CreateBrand < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :name, null: false
      t.string :nationality
    end
    add_index :brands, :name
  end
end
