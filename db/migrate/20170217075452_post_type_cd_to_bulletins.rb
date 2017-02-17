class PostTypeCdToBulletins < ActiveRecord::Migration
  def change
    add_column :bulletins, :post_type_cd, :integer, default: 0
  end
end
