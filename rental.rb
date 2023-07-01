# rentals
class Rental
  attr_accessor :id, :person_id, :book_id, :rental_date

  def initialize(person_id, book_id, rental_date)
    @person_id = person_id
    @book_id = book_id
    @rental_date = rental_date
  end
end
