class Item < ActiveRecord::Base
  attr_accessible :category_id, :cost, :name
  
  belongs_to :category
  has_many :reviews
end
