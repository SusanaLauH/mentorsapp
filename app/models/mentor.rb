class Mentor < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :email, :phone, :name, :studies_level, :field_study
  #has_many :users
  validates_presence_of :email, :phone, :name, :field_study
  has_many :mentorshipsessions
  has_many :users, :through => :mentorshipsessions



end
