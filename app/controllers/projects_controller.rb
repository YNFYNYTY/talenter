class ProjectsController < ApplicationController
	def  index
		if user_signed_in?
			@projects = current_user.projects
		else
		@projects = Project.all
		end
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
			current_user.projects << @project
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
		skill_ids_arr = params[:skill_ids]
		if @project && @project.update(project_params)
			skill_ids_arr.each do |skill_id|
				if  !@project.skills.include? (Skill.find(skill_id))
					@project.skills << Skill.find(skill_id)
				end

			end
			# redirect_to(:action => "index") and return
			redirect_to projects_path
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
      params.require(:skill).permit(:name, :id)
 	end

end