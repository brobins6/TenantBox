#Model for Messaages 
class Message < ActiveRecord::Base
	validates :sender, presence: true, allow_blank: false
	validates :receiver, presence: true, allow_blank: false
	validates :subject, presence: true, allow_blank: false
	validates :content, presence: true, allow_blank: false
end
