class ProjectsController < ApplicationController
  def index
    @projects = Project.all.order('created_at desc')
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: "Nice Abdoul! That project was successfully saved!"
    else
      render 'new'
    end
    def show
      @project = Project.find_by(id: params[:id])

      if @project.nil?
        redirect_to projects_path, alert: "Project not found"
        return
      end
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :link)
  end
end