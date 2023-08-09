require_relative 'person'
require_relative 'book'

class Rental
  attr_accessor :date, :person, :book

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person

    @book[:rentals] ||= []
    @book[:rentals] << self

    @person[:rentals] ||= []
    @person[:rentals] << self
  end

  def to_hash
    { date: @date,
      person: @person.to_hash,
      book: @book.to_hash }
  end
end
