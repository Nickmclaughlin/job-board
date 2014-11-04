class PostingsController < ApplicationController
  def new
    @posting = Posting.new
    @user = User.find(params[:user_id])
  end

  def create
    @posting = Posting.new(posting_params)
    @posting.employer_id = params[:user_id]

    if @posting.update(posting_params)
      flash[:success] = "You have successfully updated your profile."
      redirect_to user_path(current_user)
    else
      flash[:alert] = "Please update correctly."
      render 'edit'
    end
  end

  private
  def posting_params
    params.require(:posting).permit(:position, :type_of, :salary, :benefits, :description, :employer_id)
  end
end
