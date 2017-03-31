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
  end

  def borrow(title)
    if lent_out == true
      borrow == false
    else current_due_date(due_date) << @@on_loan
      borrow == true
    end
  end

  # def return_to_library
  #
  # end

  def lent_out?
    @@on_loan.include?(self)
  end

  # Class Methods

  def self.create(title, author, isbn)
    @@on_shelf << Book.new(title, author, isbn)
    @@on_shelf[-1] #makes it accessible outside the array.
  end

  def self.current_due_date
    Time.now + (2 * 7 * 24 * 3600) #2 weeks of 7 days of 24 hours of 3600 minutes.
  end

  # def self.overdue_books
  #
  # end

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
