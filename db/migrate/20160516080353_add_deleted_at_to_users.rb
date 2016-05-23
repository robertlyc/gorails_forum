class AddDeletedAtToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :deleted_at
    add_column :users, :deleted_at, :timestamp
    add_index :users, :deleted_at
  end
end
