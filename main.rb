require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'
require_relative 'app'

class Main
  def initialize
    @app = App.new
  end
end
