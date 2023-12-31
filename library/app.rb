require_relative 'load_data'
require_relative 'save_all_data'
require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'

class App
  include LoadData
  def initialize
    @books = load_books || []
    @people = load_person || []
    @rentals = load_rentals || []
  end

  def list_book
    @books.each_with_index do |book, index|
      puts "#{index + 1}) #{book[:title]} by #{book[:author]}"
    end
  end

  def create_book
    puts 'Enter book title:'
    title = gets.chomp
    puts 'Enter book author:'
    author = gets.chomp

    book = Book.new(title, author)
    book_hash = book.to_hash
    @books << book_hash

    puts "#{title} by #{author} created"
  end

  def list_people
    @people.each_with_index do |person, index|
      if person[:type] == 'Student'
        puts "#{index + 1}) [STUDENT] Name: #{person[:name]}, ID: #{person[:id]}, Age: #{person[:age]}"
      elsif person[:type] == 'Teacher'
        puts "#{index + 1}) [TEACHER] Name: #{person[:name]}, ID: #{person[:id]}, Age: #{person[:age]} "
      end
    end
  end

  def create_person
    print 'Do you want to create a student (1) or teacher (2)? [Input the number]: '
    person_type = gets.chomp

    if person_type == '1'
      create_student
    elsif person_type == '2'
      create_teacher
    else
      puts 'Wrong selection! Select a valid option'
      create_person
    end
  end

  def create_student
    print 'Enter student name: '
    name = gets.chomp
    print 'Enter student age: '
    age = gets.chomp
    print 'Does the student have parent permission? [Y/N]: '
    parent_permission = gets.chomp.upcase

    student = Student.new(age, parent_permission, name)
    student_hash = student.to_hash
    @people << student_hash

    puts 'Student created successfully'
  end

  def create_teacher
    print 'Enter teacher name: '
    name = gets.chomp
    print 'Enter teacher Age: '
    age = gets.chomp
    print 'Enter teacher specialization: '
    specialization = gets.chomp

    teacher = Teacher.new(age, specialization, name)
    teacher_hash = teacher.to_hash
    @people << teacher_hash

    puts 'Teacher created successfully'
  end

  def create_rental
    if @books.empty?
      puts 'please add a book before adding a rental'
    elsif @people.empty?
      puts 'please add a person before adding a rental'
    else
      puts 'Select a book from the following list by number'
      list_book
      book_no = gets.chomp.to_i
      puts 'Select a person from the following list by number (not id)'
      list_people
      person_no = gets.chomp.to_i
      print 'Date:'
      date = gets.chomp
      add_rental(book_no, person_no, date)
    end
  end

  def add_rental(book_no, person_no, date)
    book = @books[book_no - 1]
    person = @people[person_no - 1]

    rental = Rental.new(date, book, person)
    rental_hash = rental.to_hash
    @rentals << rental_hash

    puts 'Rental created successfully'
  end

  def list_rental
    print 'ID of person:'
    person_id = gets.chomp.to_i
    get_rental(person_id)
  end

  def get_rental(person_id)
    rentals = @rentals.select { |rental| rental[:person][:id] == person_id }
    if rentals.empty?
      puts 'No rentals found for the specified person ID.'
    else
      puts 'Rentals:'
      rentals.each do |rental|
        puts "DATE: #{rental[:date]}, Book: #{rental[:book][:title]} by #{rental[:book][:author]}"
      end
    end
  end

  def save_data_to_files
    SaveAllData.new(@books, @people, @rentals)
  end
end
