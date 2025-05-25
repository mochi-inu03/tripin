class CreateSpots < ActiveRecord::Migration[7.1]
  def change
    create_table :spots do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.text :description, null: false
      t.string :image, null: false
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :category_id, null: false
      t.timestamps
    end
  end
end
