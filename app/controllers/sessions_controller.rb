#Controller for Sessions
class SessionsController < ApplicationController
  
  layout "login_page"
  def new
		if current_user
			redirect_to home_path
		end
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      #redirect_to "/home"
      redirect_to current_user.group == "landlord" ? "/LandLord" : "/home"
    else
      #TODO:display error message1
      flash[:alert] = "Invalid email or password"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end


#unless @current_user == 'landlord@admin.com'
#   log_in user
#  redirect_to'/LandLord'
#end