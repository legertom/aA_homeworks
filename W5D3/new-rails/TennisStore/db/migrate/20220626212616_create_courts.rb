class CreateCourts < ActiveRecord::Migration[5.2]
  def change
    create_table :courts do |t|
      t.string :court_name, null: false 
      t.string :address
      t.integer :num_courts
    end
  end
end
