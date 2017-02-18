class AddPassFailToConfirms < ActiveRecord::Migration
  def change
    add_column :confirms, :pass_fail, :string
  end
end
