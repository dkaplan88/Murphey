class Review < ActiveRecord::Base
  attr_accessible :body, :item_id, :rating, :title, :user_id
  
  belongs_to :user
  belongs_to :item
  
  validates :rating, :numericality => {   :greater_than_or_equal_to => 0,
                                          :less_than_or_equal_to => 5 }
end
