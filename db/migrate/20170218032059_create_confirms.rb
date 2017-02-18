class CreateConfirms < ActiveRecord::Migration
  def change
    create_table :confirms do |t|
      t.text :confirm_content
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
