class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :owner_name
      t.string :image_url
      t.integer :address_id
      t.integer :room_id
    end
  end
end
