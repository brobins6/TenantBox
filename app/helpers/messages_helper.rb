#Helper for Messages
module MessagesHelper
	def get_sent
		Message.where(sender: current_user.email).all
	end

	def get_received
		Message.where(receiver: current_user.email).all
	end

	def get_message_by_id(message_id)
		Message.where(id: message_id)
	end

	def get_unread
		Message.where(receiver: current_user.email, unread: 1).all
		#TODO: Implement read status
	end
end

# module MessagesHelper
# 	def get_sent
# 		Message.where(sender: current_user.email).all.sort_by{|message| message.created_at}.reverse
# 	end

# 	def get_received
# 		Message.where(receiver: current_user.email).all.sort_by{|message| message.created_at}.reverse
# 	end

# 	def get_message_by_id(message_id)
# 		Message.where(id: message_id)
# 	end

# 	def get_unread
# 		Message.where(receiver: current_user.email, unread: 1).all.sort_by{|message| message.created_at}.reverse
# 		#TODO: Implement read status
# 	end
# end
