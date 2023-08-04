require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'
require_relative 'app'

class Main
  def initialize
    @app = App.new
  end

  def main
    loop do
      puts
      puts 'Please choose an option by entering a number:'
      puts '1 - List all books'
      puts '2 - List all people'
      puts '3 - Create a person'
      puts '4 - Create a book'
      puts '5 - Create a rental'
      puts '6 - List all rentals for a given person id'
      puts '7 - Exit'
      choice = gets.chomp.to_i

      if (1..6).include?(choice)
        user_choice(choice)
      elsif choice == 7
        puts 'Exiting...'
        break
      else
        puts 'Invalid choice. Please try again.'
      end
    end
  end

  def user_choice(choice)
    case choice
    when 1
      @app.list_book
    when 2
      @app.list_people
    when 3
      @app.create_person
    when 4
      @app.create_book
    when 5
      @app.create_rental
    when 6
      @app.list_rental
    end
  end
end

# Run the main program
main_app = Main.new
main_app.main
