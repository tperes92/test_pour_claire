class ProjectsController < ApplicationController
	before_action :authenticate_user!, except: [:index]

	has_scope :by_city

	def index
		
	  @projects = apply_scopes(Project).all
	  @cities = City.all
	end

	def show
	  @project = Project.find(params[:id])
	end

	def new
	  @project = Project.new
	end

	def create
	  @project = Project.new(project_params)
	  @project.city = current_user.city
	  @project.architect = current_user
	  if @project.save
	  	redirect_to @project
	  else
	  	render :new
	  end
	end
	
	private

	def project_params
	  params.permit(:title, :description, :location, :number_of_participants, :amount_needed)
	end
end 
