class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :category
      t.boolean :status

      t.timestamps null: false
    end
  end
end
