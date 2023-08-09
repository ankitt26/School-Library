require 'json'
require_relative 'app'

class SaveAllData
  def initialize(books, people, rentals)
    @books = books
    @people = people
    @rentals = rentals

    save_books
  end

  def save_books
    file_path = './json/books.json'
    books_data = []
    @books.each do |book|
      books_data << book
    end
    File.write(file_path, JSON.generate(books_data))
  end
end
