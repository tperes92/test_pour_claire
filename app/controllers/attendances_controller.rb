class AttendancesController < ApplicationController
  
  def create
    @attendance = Attendance.new(involved_project_id: params[:project_id], participant: current_user)
    if @attendance.save
      redirect_to project_path(params[:project_id])
    else
      redirect_to project_path(params[:project_id])
    end
  end

  def destroy
    
  end

end
