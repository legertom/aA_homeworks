class ChangeToys < ActiveRecord::Migration[5.2]
  def change
    add_column(:toys, :name, :string, { null:false}) 
     
    
  end
end
