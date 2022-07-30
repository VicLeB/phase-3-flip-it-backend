class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.integer :part_id
      t.integer :tool_id
      t.integer :room_id
    end
  end
end
