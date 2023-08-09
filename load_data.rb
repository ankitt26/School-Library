require 'json'

module LoadData
  def load_books
    file_path = './json/books.json'
    file = File.read(file_path)
    JSON.parse(file, symbolize_names: true)
  end

  def load_person
    file_path = './json/person.json'
    file = File.read(file_path)
    JSON.parse(file, symbolize_names: true)
  end

  def load_rentals
    file_path = './json/rentals.json'
    file = File.read(file_path)
    JSON.parse(file, symbolize_names: true)
  end
end
