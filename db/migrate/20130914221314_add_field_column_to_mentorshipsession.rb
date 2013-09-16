class AddFieldColumnToMentorshipsession < ActiveRecord::Migration
  def change
    add_column :mentorshipsessions, :field_study, :string
    remove_column :mentorshipsessions, :sessiondate
  end
end
