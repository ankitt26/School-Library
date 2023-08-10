require_relative 'app'

module UserInput
  def initialize
    @app = App.new
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

  def save_all_data
    @app.save_data_to_files
  end
end
