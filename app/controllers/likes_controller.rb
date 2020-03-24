class LikesController < ApplicationController
     before_action :authenticate_user!

  def show
    @like = Like.find_by(user: current_user)
      if @like.projects != nil
        @like_projects = LikeProject.all.select {|like_project| like_project.like == @like}
      else 
        redirect_to root_path
        flash[:alert] = "Votre liste de projets favoris est vide"
    end
  end




end
