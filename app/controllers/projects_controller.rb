class ProjectsController < ApplicationController
	def  index
		 @projects = Project.all
		render 'home'
	end

	def show
		@project = Project.find(params[:id])
		render 'show'
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

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		if @project && @project.update(project_params)
			redirect_to projects_path , notice: 'Project was successfully updated'
		else
			render 'edit'
		end
	end

	def destroy
		@project = Project.find(params[:id])
		if @project.destroy()
			flash[:notice]='Project has been deleted'
			redirect_to projects_path
		else
			flash[:notice]='[ERROR]Project has not been deleted'
		end
	end

private

	def project_params
      params[:project].permit(:name, :description, :long_description)
 	end

end





