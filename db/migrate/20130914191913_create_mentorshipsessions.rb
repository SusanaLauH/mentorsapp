class CreateMentorshipsessions < ActiveRecord::Migration
  def change
    create_table :mentorshipsessions do |t|
      t.integer :mentor_id
      t.integer :user_id
      t.date :sessiondate

      t.timestamps
    end
  end
end
