class AddNewsletterToProduct < ActiveRecord::Migration
  def change
    add_column :products, :newsletter_uid, :string
  end
end
