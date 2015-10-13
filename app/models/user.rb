class User < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	validates :username, :presence => true, :uniqueness => true
  validates :password, :presence => true
  validates_length_of :password, :in => 6..20, :on => :create
  has_many :properties
  def self.authenticate(username, password)
    user = User.find_by_username(username)
      if user.nil?
        return nil
      end

      if user.password == password
        return user
      else
        return nil
      end
  end

  def self.id
    user_id = User.find_by_id(id)
  end
end
