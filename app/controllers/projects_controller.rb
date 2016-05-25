class ProjectsController < ApplicationController

  def index
    @projects = Project.paginate(page: params[:page])
  end

  def new
    @project = Project.new
  end

  def create
    Project.create(project_params)

    redirect_to action: 'index'
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    @project.update(project_params)

    redirect_to action: 'index'
  end
  
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to action: 'index'
  end


  private


  def project_params
    params.require(:project).permit(:name, :description)
  end
  
end
