#Controller for Application
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  
  protected
  def authenticate_user!
    if current_user
      #super
      #redirect_to home_path
    else
      redirect_to login_path
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end 
  
 
  #layout "application"

  # another way
  #layout :application_by_method
  #private
  #def application_by_method
    #if current_user.nil?
    #  "login_page"
    #else
    #  "application"
    #end
  #end
end