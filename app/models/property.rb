class Property < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	belongs_to :user
	has_many :comments
	validates :address, :rate, :comment, :start_date, :end_date, :booked_by, :presence => true
end
