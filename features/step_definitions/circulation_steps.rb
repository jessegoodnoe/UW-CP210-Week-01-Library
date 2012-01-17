Given /^the library has a book$/ do
  @book = Book.new
end

Given /^the library has a user$/ do
  @user = User.new
end

When /^they checkout a book$/ do
  @user.checkout(@book)
end

Then /^the book is checked out$/ do
  @book.checked_out?.should be_true
end

Then /^the book is checked out to that user$/ do
  @book.user.should be @user
end