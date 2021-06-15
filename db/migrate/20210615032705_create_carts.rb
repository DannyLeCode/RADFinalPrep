class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.belongs_to :product, null: false
      t.belongs_to :user, null: false
      t.string :size
      t.string :colour
      t.integer :quantity
      t.timestamps
    end
  end
end
