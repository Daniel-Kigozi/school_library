# rentals
class Rental
  attr_accessor :id, :person_id, :book_id, :rental_date

  def initialize(id, person_id, book_id, rental_date)
    @id = id
    @person_id = person_id
    @book_id = book_id
    @rental_date = rental_date
  end
end
