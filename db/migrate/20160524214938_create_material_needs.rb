class CreateMaterialNeeds < ActiveRecord::Migration
  def change
    create_table :material_needs do |t|
      t.belongs_to :material_list
      
      t.string :name
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
