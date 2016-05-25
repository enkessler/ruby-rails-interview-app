class AssignmentsController < ApplicationController

  # todo - I feel like I shouldn't have to have hard reference so many other classes in this controller
  
  def new
    @assignment = Assignment.new

    # All assignments belong to a project and they will have to attach to it eventually
    @project = Project.find(params[:project_id])

    # Loading up all users so that the view has access to them
    @users = User.all
  end

  def create
    assigned_project = Project.find(params[:project_id])
    assigned_user = User.find(params[:assignment][:user])
    @assignment = Assignment.create(project: assigned_project, user: assigned_user)
    
    redirect_to projects_path
  end
  
  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy

    redirect_to projects_path
  end

end
