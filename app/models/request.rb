#Request Model
class Request < ActiveRecord::Base

	validates :name, presence: true
	validates :email, presence: true
	validates :address, presence: true
	validates :option, presence: true
	validates :body, presence: true
end
