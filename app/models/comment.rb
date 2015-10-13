class Comment < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	belongs_to :user
	validates :content, :presence => true
end
