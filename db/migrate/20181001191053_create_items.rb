class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.text :description
      t.integer :category_id
      t.string :img_url
      t.boolean :in_stock
      t.string :size
      t.string :color

      t.timestamps
    end
  end
end
