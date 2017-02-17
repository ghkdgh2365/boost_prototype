class AddPostTypeToBulletin < ActiveRecord::Migration
  def change
    add_column :bulletins, :post_type, :string
  end
end
