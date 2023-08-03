require_relative 'person'
require_relative 'book'

class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
    @book.add_rental(self)
    @person.rentals << self
  end
end
