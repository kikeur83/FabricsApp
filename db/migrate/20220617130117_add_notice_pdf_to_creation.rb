class AddNoticePdfToCreation < ActiveRecord::Migration[6.1]
  def change
    add_column :creations, :notice_pdf, :string
  end
end
