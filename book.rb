# Represents the books class
class Book
  attr_accessor :title, :author, :rentals

  def initialize(id, title, author)
    @id = id
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    Rental.new(person, date, self)
  end
end
