class Project < ActiveRecord::Base
  
  has_one :material_list, dependent: :destroy
  has_many :assignments, dependent: :destroy
  has_many :users, through: :assignments

end
