class Booking < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	belongs_to :user
	validates :start_date, :end_date, :presence => true
end
