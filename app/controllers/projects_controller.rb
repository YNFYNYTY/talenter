class ProjectsController < ApplicationController
	def  home
		 @projects = Project.all
		render 'home'
	end
end
