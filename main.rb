require_relative 'userinput'

class Main
  include UserInput

  def display_menu
    puts
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end

  def user_input
    gets.chomp.to_i
  end

  def start
    loop do
      display_menu
      choice = user_input

      if (1..6).include?(choice)
        user_choice(choice)
      elsif choice == 7
        puts 'Exiting....'
        break
      else
        puts 'Invalid choice. Please try again.'
      end
    end
  end
end

# Run the main program
main_app = Main.new
main_app.start
