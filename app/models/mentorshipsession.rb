class Mentorshipsession < ActiveRecord::Base
  attr_accessible :mentor_id, :field_study, :user_id
  belongs_to :user
  belongs_to :mentor
  validates_uniqueness_of :user_id
  end
