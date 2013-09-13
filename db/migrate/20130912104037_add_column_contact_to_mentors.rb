class AddColumnContactToMentors < ActiveRecord::Migration
  def change
    add_column :mentors, :email, :string
    add_column :mentors, :phone, :integer
  end
end
