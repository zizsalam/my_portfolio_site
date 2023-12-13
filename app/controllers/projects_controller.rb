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

  def find_project
    @project = Project.friendly.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])

  end

  def update
    if @project.update project_params
      redirect_to @project, notice: "Nice Abdoul! That project was successfully updated!"
    else
      render 'edit'
    end

  end

  def destroy

  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :link)
  end
end
