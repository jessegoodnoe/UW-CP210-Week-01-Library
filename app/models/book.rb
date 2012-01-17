class Book < ActiveRecord::Base
  validates :title, :presence => true
  validates :author, :presence => true
  
  belongs_to :author
  belongs_to :user
  
  def checkout_to(user)
    if (user && self.user.nil?)
      self.user = user
    end
  end
  
  def checked_out?
    !self.user.nil?
  end
end
