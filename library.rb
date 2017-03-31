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

  def borrow

  end

  def return_to_library

  end

  def lent_out?(title)
    if %w[(title)]@@on_loan
  end

  # Class Methods

  def self.create
    @@on_shelf << Book.new(title, author, isbn)
    puts "#{Book(title)} by #{Book(author)} and ISBN# #{Book(isbn)} is available!"
  end

  def self.current_due_date

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
