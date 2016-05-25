class MaterialListsController < ApplicationController

  def new
    @material_list = MaterialList.new
    
    # No view to render and redirection does not work with a POST, so just go right into the creation method
    create
  end
  
  def create
    parent_project = Project.find(params[:project_id])
    MaterialList.create(project: parent_project)
    
    redirect_to projects_path
  end

end
