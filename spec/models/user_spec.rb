require 'spec_helper'

describe User do
  describe "checkout" do
    
    it "checks the book out to user" do
      book = double("book")
      user = User.new
      book.should_receive(:checkout_to).with(user)
      
      user.checkout(book)
    end
    
  end
end
