class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.belongs_to :project
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
