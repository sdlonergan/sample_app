class SessionsController < ApplicationController

  before_filter :create_new_user, only: [:new, :create]   

  def new 
  end

  def create
    user = User.find_by_email(params[:email].downcase)
    if user && user.authenticate(params[:password])
      sign_in user
      redirect_back_or user
    else
      flash.now[:error] = 'Invalid email/password combination' 
      render 'new'  
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

  private 
    def create_new_user
      if signed_in?
        redirect_to root_path, notice: "No Need to be here!"
      end
    end
end
