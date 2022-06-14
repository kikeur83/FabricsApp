class CreateFavoris < ActiveRecord::Migration[6.1]
  def change
    create_table :favoris do |t|
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.references :creation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
