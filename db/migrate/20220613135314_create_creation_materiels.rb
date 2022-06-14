class CreateCreationMateriels < ActiveRecord::Migration[6.1]
  def change
    create_table :creation_materiels do |t|
      t.string :content
      t.references :creation, null: false, foreign_key: true
      t.references :materiel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
