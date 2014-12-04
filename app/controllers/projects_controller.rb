class ProjectsController < ApplicationController
	# before_action :require_login, except :index

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

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      redirect_to project_url(@project)
    end
   end

  def destroy
  	@project = Project.find(params[:id])
  	@project.destroy
  	redirect_to project_path
  end

  def show
  	@project = Project.find(params[:id])
  end


  def edit
  	@project = Project.find(params[:id])
  end

  private
  def project_params
  	params.require(:project)
          .permit(:name,
            :funding_goal,
            :end_date,
            :start_date,
            :description,
            :amount_funded,
            donates_attributes: [:id, :amount]
            )
  end


end
