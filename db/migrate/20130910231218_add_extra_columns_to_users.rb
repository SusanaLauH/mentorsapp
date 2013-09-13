class AddExtraColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :studies_level, :string
    add_column :users, :field_study, :string
  end
end
