class RemoveForeignKeyFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :mentor_id
  end

  def down
    add_column :users, :mentor_id, :integer
  end
end
