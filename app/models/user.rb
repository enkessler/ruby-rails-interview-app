class User < ActiveRecord::Base
  
  has_many :assignments
  has_many :projects, through: :assignments
  
  validates :name, :email, presence: true
end
