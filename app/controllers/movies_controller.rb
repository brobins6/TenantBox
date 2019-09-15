#Controller for Landlord
class MoviesController < ApplicationController

  before_filter :authenticate_user!
  layout :determine_layout


  def determine_layout
    current_user.group == "landlord" ? "landlord_layout" : "application"
    #if current_user.group == "landlord"
    #   root :to => 'movies#Landlord'
    #end
  end
  #layout "application"
  
  def movie_params

    params.require(:tenants).permit(:tenant, :rent, :unreadMess, :maintenance,  :propLoc)
  end

  def show


  #filler controller definitions in order to try to display something on
  #the landlord page which could be modified fairly easily. instead of set
  #values the instance variables will have functions to calculate the correct
  #amount of money, messages, and documents
  end

  def profile

  end
  
  def maintenance 
    @allRequests = Request.all.order(:created_at)
    
    @change = params[:stat]
    if (@change != nil)
      newRequest = Request.find(params[:stat]) 
      if (newRequest.status != "complete")
        Request.create!(:address => newRequest.address, :name => newRequest.name, :email => newRequest.email, :option => newRequest.option,:body => newRequest.body, :status => "complete",:created_at => newRequest.created_at)
        newRequest.destroy
        @allRequests = Request.all.order(:created_at)
      end
    end 
    
end 
  def landLord
    @tenant = Tenant.all
    @money = 0
    @messages = 0
    @tenantTotal = Tenant.all.count
    @tenant.each do |tenant|
      @money += tenant.rent.to_i
    end
    @tenant.each do |tenant|
      @messages += tenant.unreadMess.to_i
    end
    @totalMoney = @money
    @totalMessages = @messages
  end

  def tennantList
    @allTenants = Tenant.all
    @sorted = params[:sort]
    if (@sorted == "tenant")
      @allTenants = Tenant.all.order(@sorted)
    else
      @allTenants = Tenant.all.order(@sorted).reverse
    end
  
  end
  def requestform
  end
  
  def messages_landLord
  end
  def profile_landLord
  end
  
end
