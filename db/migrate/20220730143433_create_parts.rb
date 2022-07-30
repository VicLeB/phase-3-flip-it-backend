class CreateParts < ActiveRecord::Migration[6.1]
  def change
    create_table :parts do |t|
      t.string :name
      t.string :image_url
      t.integer :cost
      t.integer :project_id
    end
  end
end
