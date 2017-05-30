class CreateListItemsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_table :list_items do |t|
      t.integer :user_id
      t.integer :list_id
      t.integer :item_id
      t.timestamps null: false
    end
  end
end