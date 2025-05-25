class CreateSpots < ActiveRecord::Migration[7.1]
  def change
    create_table :spots do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :image
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :category_id

      t.timestamps
    end
  end
end
