class User < ActiveRecord::Base
  
  has_many :books
  
  def checkout(book)
    book.checkout_to(self)
  end
end
