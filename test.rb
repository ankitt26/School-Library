require_relative 'book'
require_relative 'person'
require_relative 'rental'

# Create some books
book1 = Book.new('Book1', 'Author1')
book2 = Book.new('Book2', 'Author2')

# Create some persons
person1 = Person.new(20, 'Person1')
person2 = Person.new(25, 'Person2')

# Create rentals and associate them with books and persons
Rental.new('2023-08-05', book1, person1)
Rental.new('2023-08-06', book1, person2)
Rental.new('2023-08-07', book2, person1)

puts 'person1 books & rentals --'
person1.rentals.each do |rental|
  puts "Book: #{rental.book.title}, Date: #{rental.date}"
end
puts

puts 'person2 books & rentals --'
person2.rentals.each do |rental|
  puts "Book: #{rental.book.title}, Date: #{rental.date}"
end
puts

puts 'book1 person and rentals --'
book1.rentals.each do |rental|
  puts "Person: #{rental.person.name}, Date: #{rental.date}"
end
puts

puts 'book2 person and rentals --'
book2.rentals.each do |rental|
  puts "Person: #{rental.person.name}, Date: #{rental.date}"
end
puts
