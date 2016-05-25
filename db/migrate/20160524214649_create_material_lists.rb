class CreateMaterialLists < ActiveRecord::Migration
  def change
    create_table :material_lists do |t|
      t.belongs_to :project

      t.timestamps null: false
    end
  end
end
