class LikeProjectsController < ApplicationController
before_action :authenticate_user!

  def index 
    @like_projects = LikeProject.all
  end


  def show
  end

  def create 
    @like = Like.find_by(user: current_user)
    @project = Project.find_by(id: params[:project_id])
    @like_project = LikeProject.new(like: @like, project: @project)
      if @like_project.save 

      redirect_to root_path
      flash[:alert] = "Vous avez liké le projet"
      else

      flash[:error] = 'Le projet n\'a pas été liké'
      redirect_to projects_path
      end
  end


  def destroy
    @like = Like.find_by(user: current_user)
    @project = Project.find_by(id: params[:id])
    @like_project = LikeProject.find_by(like: @like, project: @project)
    if @like_project.destroy
      redirect_to like_path(@like.id)
      flash[:alert] = "Vous n'aimez plus le projet"
    else
      flash[:alert] = "Le projet ne fait plus partie de vos projets favoris"
    end
  end


end
