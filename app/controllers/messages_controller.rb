#controller for Messages
class MessagesController < ApplicationController
  
  before_filter :authenticate_user!
 
  layout "application"
  
  def messages
		@message = Message.new	
  end

	def create
		@message = Message.new(message_params)
		if @message.save 
			 redirect_to current_user.group == "landlord" ? "/LandLord/Send" : "/send"
			#TODO: figure out what to do on success
		else
			 redirect_to current_user.group == "landlord" ? "/LandLord/Error" : "/error"
			#TODO: figure out what to do on failure
		end
	end

	def display_name(email)
		User.find_by(email: email).name
	end

	private

	def message_params
		params.require(:message).permit(:sender, :receiver, :subject, :content, :parent_id)
	end
end



# class MessagesController < ApplicationController

#   before_filter :authenticate_user!
  
#   layout :determine_layout


#   def determine_layout
#     current_user.group == "landlord" ? "landlord_layout" : "application"
#     #if current_user.group == "landlord"
#     #   root :to => 'movies#Landlord'
#     #end
#   end

#   def messages
# 		@message = Message.new
#   end

# 	def create
# 		@message = Message.new(message_params)
# 		@message.sender = current_user.email
# 		if @message.save
#       redirect_to current_user.group == "landlord" ? "/LandLord/Send" : "/send"
#     #   updateTenant = Tenant.find_by_tenant(current_user.name)
# 		 #@unreadMess = (updateTenant.unreadMess).to_i + 1
# 		 #Tenant.create!(:tenant => updateTenant.tenant,:email => updateTenant.email, :rent => updateTenant.rent, :unreadMess => @unreadMess.to_s, :maintenance=>
#     #  	   updateTenant.maintenance, :propLoc => updateTenant.propLoc)
#     #  	 updateTenant.destroy
# 			#TODO: figure out what to do on success
# 		else
# 			 redirect_to current_user.group == "landlord" ? "/LandLord/Error" : "/error"
# 			#TODO: figure out what to do on failure
# 		end
# 	end

# 	def display_name(email)
# 		User.find_by(email: email).name
# 	end

# 	private

# 	def message_params
# 		params.require(:message).permit(:receiver, :subject, :content, :parent_id)
# 	end

  
#  before_filter :authenticate_user!
 
#  layout "application"
  
#  def messages
# 		@message = Message.new	
#  end

# 	def create
# 		@message = Message.new(message_params)
# 		if @message.save 
# 			updateTenant = Tenant.find_by_tenant(current_user.name)
# 			@unreadMess = (updateTenant.unreadMess).to_i + 1
# 			Tenant.create!(:tenant => updateTenant.tenant,:email => updateTenant.email, :rent => updateTenant.rent, :unreadMess => @unreadMess.to_s, :maintenance=>
#     		updateTenant.maintenance, :propLoc => updateTenant.propLoc)
#     		updateTenant.destroy
# 		else
# 			#TODO: figure out what to do on failure
# 		end
# 	end

# 	def display_name(email)
# 		User.find_by(email: email).name
# 	end

# 	private

# 	def message_params
# 		params.require(:message).permit(:sender, :receiver, :subject, :content, :parent_id)
# 	end
# >>>>>>> f416ac14e2ea33bf49d9d7809b19750058637425
#end

   