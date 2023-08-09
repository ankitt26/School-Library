require 'json'
require_relative 'app'

class SaveAllData
  def initialize(books, people, rentals)
    @books = books
    @people = people
    @rentals = rentals

    save_books
    save_person
  end

  def save_books
    file_path = './json/books.json'
    books_data = []
    @books.each do |book|
      books_data << book
    end
    File.write(file_path, JSON.generate(books_data))
  end

  def save_person
    file_path = './json/person.json'
    person_data = []
    @people.each do |person|
      person_data << person
    end
    File.write(file_path, JSON.generate(person_data))
  end

  def save_rentals
    file_path = './json/rental.json'
    rental_data = []
    @rentals.each do |rental|
      rental_data << rental
    end
    File.write(file_path, JSON.generate(rental_data))
  end
end
