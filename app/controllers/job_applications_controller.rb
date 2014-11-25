class JobApplicationsController < ApplicationController
  def new
    @job_application = JobApplication.new
    @user = User.find(params[:user_id])
    @posting = Posting.find(params[:posting_id])
  end

  def create
    @job_application = JobApplication.new(job_application_params)
    @job_application.user_id = params[:user_id]
    @job_application.posting_id = params[:posting_id]

    if @job_application.update(job_application_params)
      flash[:success] = "You have successfully submitted application."
      redirect_to user_posting_path(current_user, @job_application.posting_id)
    else
      flash[:alert] = "Please update correctly."
      render 'edit'
    end
  end

  private
  def job_application_params
    params.require(:job_application).permit(:cover_letter, :resume, :citizen)
  end
end
