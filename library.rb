# Let's go to the library!

class Book

  @@on_shelf = []
  @@on_loan = []

  attr_accessor :due_date

  #Instance Methods

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
    @due_date = nil
  end

  def borrow
    if @@on_loan
      return false #remember where your returns are!
    else
      @@on_loan << self #Self targets the class object you are calling! WOW.
      @@on_shelf.delete(self)
      @due_date = Book.current_due_date #Calls the class method for Book to set the due date for the object.
      return true
    end
  end

  def return_to_library
    if (lent_out?) #don't need to enter == true argument, since lent_out? is a true/false check.
      @@on_shelf << self
      @@on_loan.delete(self)
      @due_date = nil
      return true
    else
      return false
    end
  end

  def lent_out?
    @@on_loan.include?(self) #include returns a true or false on its own.
  end

  # Class Methods

  def self.create(title, author, isbn)
    @@on_shelf << Book.new(title, author, isbn)
    @@on_shelf[-1] #makes it accessible outside the array.
  end

  def self.current_due_date
    Time.now + (2 * 7 * 24 * 3600) #2 weeks of 7 days of 24 hours of 3600 minutes.
  end

  def self.overdue_books

  end

  def self.browse
    puts @@on_shelf.rand(100)
  end

  def self.available
    @@on_shelf.each do |books|
      books = Book(title)
      put books
    end
  end

  def self.borrowed
    @@on_loan.each do |books|
      books = Book(title)
      put books
    end
  end

end
