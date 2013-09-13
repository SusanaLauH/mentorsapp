class Mentor < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :email, :phone, :name, :studies_level, :field_study
  has_many :users

end
