class AddFieldToNewsletter < ActiveRecord::Migration
  def change
    add_column :newsletters, :news_uid, :string
  end
end
