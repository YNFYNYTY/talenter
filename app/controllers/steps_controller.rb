class StepsController < ApplicationController
	def new
		@project = Project.find(params[:id])
		@step = Step.new
	end

	def create
		@project = Project.find(params[:id])

	end
end