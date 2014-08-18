class ProjectsController < ApplicationController
	def  index
		 @projects = Project.all
		render 'home'
	end

	def show
		@project = Project.find(params[:id])
		render
	end

	def new
    @project = Project.new
 	end

	def create
		@project = Project.new(project_params)
		if @project.save
				redirect_to projects_path notice: 'Project was successfully created.'
		else
			 render 'index'
		end
	end

private

	def project_params
      params[:project].permit(:name, :description)
 	end

end
