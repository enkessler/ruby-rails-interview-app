class MaterialNeedsController < ApplicationController

  def new
    @material_need = MaterialNeed.new
    
    # All needs derive from some project and they will have to attach to it eventually
    @project_id = params[:project_id]
  end

  def create
    parent_list = Project.find(params[:project_id]).material_list
    @material_need = MaterialNeed.create(material_need_params.merge(material_list: parent_list))
    
    redirect_to projects_path
  end

  def edit
    @material_need = MaterialNeed.find(params[:id])
  end

  def update
    @material_need = MaterialNeed.find(params[:id])

    @material_need.update(material_need_params)

    redirect_to projects_path
  end
  
  def destroy
    @material_need = MaterialNeed.find(params[:id])
    @material_need.destroy

    redirect_to projects_path
  end


  private


  def material_need_params
    params.require(:material_need).permit(:name, :quantity)
  end
  
end
