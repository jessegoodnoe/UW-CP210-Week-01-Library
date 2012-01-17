require 'spec_helper'

describe Book do
  describe "checkout" do
  
    it "checks out a book" do
      book = Book.new
      user = User.new
      book.checkout_to(user)
      book.checked_out?.should be_true
    end
    
    it "stores who checked it out" do
      book = Book.new
      user = User.new
      book.checkout_to(user)
      book.user.should be user
    end
    
  end
end