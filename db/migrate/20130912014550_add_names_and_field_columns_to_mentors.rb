class AddNamesAndFieldColumnsToMentors < ActiveRecord::Migration
  def change
    add_column :mentors, :name, :string
    add_column :mentors, :studies_level, :string
    add_column :mentors, :field_study, :string
  end
end
