require_relative 'book'
require_relative 'student'
require_relative 'teacher'

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

  def list_people
    @people.each do |person|
      puts person
    end
  end

  def create_person
    print 'Do you want to create a student (1) or teacher (2)? [Input the number]: '
    person_type = gets.chomp

    if person_type == '1'
      print 'Enter student name: '
      name = gets.chomp
      print 'Enter student age: '
      age = gets.chomp
      print 'Does the student have parent permission? [Y/N]: '
      parent_permission = gets.chomp

      Student.new(age, name, parent_permission)
      @people << Student.new(age, name, parent_permission)

      puts 'student created successfully'
    elsif person_type == '2'
      print 'Enter teacher name: '
      name = gets.chomp

      print 'Enter teacher Age: '
      age = gets.chomp
      print 'Enter teacher specialization: '
      specialization = gets.chomp

      Teacher.new(age, specialization, name)
      @people << Teacher.new(age, specialization, name)

      puts 'teacher created successfully'
    else
      puts 'wrong selection! select a valid option'
      create_person
    end
  end
end
