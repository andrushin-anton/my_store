class AddIndexesToItems < ActiveRecord::Migration
  def change
    add_index :items, :price
    add_index :items, :name
  end
end
