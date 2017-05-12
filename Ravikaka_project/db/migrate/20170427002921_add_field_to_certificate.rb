class AddFieldToCertificate < ActiveRecord::Migration
  def change
    add_column :certificates, :image_uid, :string
  end
end
