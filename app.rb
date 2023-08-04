require_relative 'book'

class App
  def initialize
    @books = []
    @people = []
  end

  def list_book
    @books.each do |book|
      puts "#{book.title} by #{book.author}"
    end
  end

  def create_book
    puts 'enter book title'
    title = gets.chomp
    puts 'enter book author'
    author = gets.chomp

    Book.new(title, author)
    @books << Book.new(title, author)

    puts "#{title} by #{author} created"
  end
end
