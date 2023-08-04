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

  def create_person
    print "Do you want to create a student (1) or teacher (2)? [Input the number]: "
    person_type = gets.chomp

    if person_type == "1"
      print "Enter student name: "
      name = gets.chomp

      print "Enter student age: "
      age = gets.chomp

      print "Does the student have parent permission? [Y/N]: "
      parent_permission = gets.chomp

      type = "student"
    else
      print "Enter teacher name: "
      name = gets.chomp

      print "Enter teacher Age"
      age = gets.chomp

      print "Enter teacher specialization: "
      specialization = gets.chomp

      type = "teacher"
    end
  end
end
