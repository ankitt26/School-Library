require 'json'
require_relative 'app'

class SaveAllData
  def initialize(books, people, rentals)
    @books = books
    @people = people
    @rentals = rentals

    save_books
    save_person
    save_rentals
  end

  def save_books
    file_path = './json/books.json'
    books_data = []
    @books.each do |book|
      # puts book
      # data = { title: book.title, author: book.author, rentals: book.rentals }
      books_data << book
    end
    File.write(file_path, JSON.generate(books_data))
  end

  def save_person
    file_path = './json/person.json'
    person_data = @people
    File.write(file_path, JSON.pretty_generate(person_data))
  end

  def save_rentals
    file_path = './json/rentals.json'
    rentals_data = @rentals
    File.write(file_path, JSON.pretty_generate(rentals_data))
  end
end
