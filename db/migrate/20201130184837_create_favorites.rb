class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :artist
      t.string :title
      t.integer :duration
      t.string :album
      t.text :album_image

      t.timestamps
    end
  end
end
