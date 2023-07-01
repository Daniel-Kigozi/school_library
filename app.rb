require './person'
require './book'
require './rental'
require './teacher'
require './student'

# app file to hold all operations
class App
  attr_accessor :people, :books, :rentals

  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def list_all_books
    @books.each do |book|
      puts '#{book.id}: #{book.title} by #{book.author}'
    end
  end

  def list_all_people
    @people.each do |person|
      puts '#{person.id}: #{person.name}'
    end
  end

  def create_person(type, id, name, parent_permission)
    if type == 'teacher'
      @people << Teacher.new(id, name)
    elsif type == 'student'
      @people << Student.new(id, name, parent_permission: parent_permission)
    else
      puts 'Invalid person type.'
    end
  end

  def create_book(id, title, author)
    @books << Book.new(id, title, author)
  end

  def create_rental(id, person_id, book_id, rental_date)
    @rentals << Rental.new(id, person_id, book_id, rental_date)
  end

  def list_rentals_by_person_id(person_id)
    rentals_for_person = @rentals.select { |rental| rental.person_id == person_id }
    if rentals_for_person.empty?
      puts 'No rentals found for the given person id.'
    else
      rentals_for_person.each do |rental|
        puts '#{rental.id}: Book ID: #{rental.book_id}, Rental Date: #{rental.rental_date}'
      end
    end
  end
end
