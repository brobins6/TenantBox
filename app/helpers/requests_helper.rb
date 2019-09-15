#Helper for requests
module RequestsHelper
    
    def get_sent
		Request.where(email: current_user.email).all
	end

	def get_all
		Request.all
	end
	
	def get_incomplete
	    Request.where(email: current_user.email, status: "incomplete").all
	end
	
	def get_complete
	    Request.where(email: current_user.email, status: "complete").all
	end
	
end