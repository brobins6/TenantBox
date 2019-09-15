class User
	attr_accessor :name, :email, :group

	def initialize(attributes = {})
		@name = attributes[:name]
		@email = attributes[:email]
		@group = attributes[:group]
	end

	def formatted_email()
		"#{@name} <#{@email}>"
	end
end
