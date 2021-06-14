class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :itemdescription
      t.string :asseturl

      t.timestamps
    end
  end
end
