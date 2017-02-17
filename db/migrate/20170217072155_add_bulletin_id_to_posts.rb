class AddBulletinIdToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :bulletin, index: true, foreign_key: true
  end
end
