class ProjectsController < ApplicationController

  def index
  	@projects = Project.all
  end

  def new
  	@project = Project.new
  end

  def create
  	@project = Project.new(project_params)
  	if @project.save
  		redirect_to projects_url
  	end
   end

  def destroy
  	@project = Projcet.find(params[:id])
  	@project.destroy
  	redirect_to project_path
  end

  def show
  	@project = Project.find(params[:id])
  end


  def edit
  	@projcet = Project.find(params[:id])
  end

  private
  def project_params
  	params.require(:project).permit(:name, :funding_goal, :end_date, :start_date, :description)
  end


end
