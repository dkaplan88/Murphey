class User < ActiveRecord::Base
  attr_accessible :login, :password
  
  has_many :reviews
end
