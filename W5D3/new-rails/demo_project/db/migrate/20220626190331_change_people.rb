class ChangePeople < ActiveRecord::Migration[5.2]
  def change

    add_column :people do |t|
      t.string :pets, index: true

    end
  end
end
