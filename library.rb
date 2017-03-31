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
    @due_date = nil #added to work with borrow/return methods.
  end

  def borrow
    if (lent_out?)
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
    overdue = [] #creates an empty array to store the list of overdue books.
    @@on_loan.each do |book|
      if (Time.now > book.current_due_date)
        overdue_books << book #adds the book object to the new array.
      end
    end
    overdue_books #displays the array of overdue books.
  end

  def self.browse
    @@on_shelf.values_at(rand(4)) #Maybe? Random is weird.
  end

  def self.available
    @@on_shelf #checks if book is part of on_shelf array. Much simpler than I originally tried to make it.
  end

  def self.borrowed
    @@on_loan #JUST LIKE AVAILABLE. Wow so simple. Assuming it works.
  end

end
