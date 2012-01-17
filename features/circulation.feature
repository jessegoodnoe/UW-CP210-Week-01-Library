Feature: Allow book circulation
	In order to allow users checkout books
	As a librarian
	I want to track to whom, and when, books are checked out.
	
	Scenario: Checking out a book
		Given the library has a book
		And the library has a user
		When they checkout a book
		Then the book is checked out
		
	Scenario: Recording who checked out a book
		Given the library has a book
		And the library has a user
		When they checkout a book
		Then the book is checked out to that user