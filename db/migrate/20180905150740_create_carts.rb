class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.string :cart_item
      t.integer :cart_item_qty
      t.belongs_to :item, foreign_key: true

      t.timestamps
    end
  end
end
