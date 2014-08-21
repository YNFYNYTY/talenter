require "pry"
class ProjectsController < ApplicationController
	def  index
		 @projects = Project.all
		 @skills = Skill.all
		render 'home'
	end

	def show
		@project = Project.find(params[:id])
		render 'show'
	end

	def new
    @project = Project.new
    @project.steps.build
 	end

	def create
		@project = Project.new(project_params)
		params[:skill_ids]
		skill_ids_arr = params[:skill_ids]
		if @project.save
			skill_ids_arr.each do |skill_id|
					@project.skills << Skill.find(skill_id)
			end
			redirect_to projects_path
		else
			 render 'error'
		end
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		params[:skill_ids]
		skill_ids_arr = params[:skill_ids]
		if @project && @project.update(project_params)
			skill_ids_arr.each do |skill_id|
				if not @project.skills.includes(Skill.find(skill_id))
					@project.skills << Skill.find(skill_id)
				end
			redirect_to projects_path
		end
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
      params.require(:project).permit(:name, :description, :long_description, steps_attributes:[:id, :project_id, :name, :description])
 	end

 	def skill_params
      params[:skill].permit(:name)
 	end

end