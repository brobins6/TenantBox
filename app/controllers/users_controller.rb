class UsersController < ApplicationController
  layout "signup_page"
  def new
		if current_user
			redirect_to "/home"
		end
    @user = User.new
  end
	def create
		@user = User.new(user_params)
		if @user.save
			Tenant.create(:tenant => @user.name, :email => @user.email, :rent => rand(330..1200).to_s, :unreadMess => 0, :maintenance => 0, :propLoc => "Tartarus")
			log_in @user
			redirect_to "/home" 
		else
			render 'new'
			flash.now[:notice] = "Invalid email or password"
		end
	end
	def show
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end  
end

