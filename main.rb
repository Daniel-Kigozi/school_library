require './app'

def main
  app = App.new

  loop do
    puts '\nSelect an option:'
    puts '1. List all books'
    puts '2. List all people'
    puts '3. Create a teacher'
    puts '4. Create a student'
    puts '5. Create a book'
    puts '6. Create a rental'
    puts '7. List all rentals for a given person id'
    puts '8. Quit'

    choice = gets.chomp.to_i

    case choice
    when 1
      puts 'Listing all books:'
      app.list_all_books
    when 2
      puts 'Listing all people:'
      app.list_all_people
    when 3
      puts 'Creating a teacher:'
      puts 'Enter ID:'
      id = gets.chomp
      puts 'Enter Name:'
      name = gets.chomp
      app.create_person('teacher', id, name, parent_permission = nil)
    when 4
      puts 'Creating a student:'
      puts 'Enter ID:'
      id = gets.chomp
      puts 'Enter Name:'
      name = gets.chomp
      puts 'Enter Parent Permission:'
      parent_permission = gets.chomp.downcase == 'true'
      app.create_person('student', id, name, parent_permission)
    when 5
      puts 'Creating a book:'
      puts 'Enter ID:'
      id = gets.chomp
      puts 'Enter Title:'
      title = gets.chomp
      puts 'Enter Author:'
      author = gets.chomp
      app.create_book(id, title, author)
    when 6
      puts 'Creating a rental:'
      puts 'Enter ID:'
      id = gets.chomp
      puts 'Enter Person ID:'
      person_id = gets.chomp
      puts 'Enter Book ID:'
      book_id = gets.chomp
      puts 'Enter Rental Date:'
      rental_date = gets.chomp
      app.create_rental(id, person_id, book_id, rental_date)
    when 7
      puts 'Enter Person ID to list rentals:'
      person_id = gets.chomp
      puts "Listing rentals for Person ID: #{person_id}"
      app.list_rentals_by_person_id(person_id)
    when 8
      puts 'Exiting the app...'
      break
    else
      puts 'Invalid choice. Please try again.'
    end
  end
end

# Call the entry point method
main
