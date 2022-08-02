class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :house_name
      t.string :image_url
      t.integer :owner_id
    end
  end
end
