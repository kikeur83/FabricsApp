class AddTimeToCreation < ActiveRecord::Migration[6.1]
  def change
    add_column :creations, :time, :integer
  end
end
