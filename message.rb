class Message
	attr_accessor :sender, :receiver, :subject, :content, :parent_id

	def initialize(attributes = {})
		@sender = attributes[:sender]
		@reciever = attributes[:receiver]
		@subject = attributes[:subject]
		@content = attributes[:content]
		@parent_id = attributes[:parent_id]
	end

end
