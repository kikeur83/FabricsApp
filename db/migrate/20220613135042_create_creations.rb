class CreateCreations < ActiveRecord::Migration[6.1]
  def change
    create_table :creations do |t|
      t.string :name
      t.integer :longueur
      t.integer :largeur
      t.string :tissue_type
      t.string :video_link
      t.string :patron_link
      t.string :tagline
      t.text :description
      t.text :instruction

      t.timestamps
    end
  end
end
