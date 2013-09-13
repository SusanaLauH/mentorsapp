class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model

  # attr_accessible :title, :body
  attr_accessible :email, :password, :password_confirmation, :remember_me, :firstname, :lastname, :studies_level, :field_study, :admin, :mentor
  belongs_to :mentor




end
