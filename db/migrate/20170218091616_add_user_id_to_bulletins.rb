class AddUserIdToBulletins < ActiveRecord::Migration
  def change
    add_reference :bulletins, :users, index: true, foreign_key: true
  end
end
