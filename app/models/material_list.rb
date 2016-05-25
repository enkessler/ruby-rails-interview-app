class MaterialList < ActiveRecord::Base
  
  belongs_to :project
  has_many :material_needs
  
end
