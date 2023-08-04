require_relative 'book'

class App
  def initialize()
    @books = []
    @people = []
  end

  def list_book
    @books.each do |book|
      puts "#{book.title} by #{book.author}"
    end
  end
end
