class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @id = Random.rand(1..1000)
    @title = title
    @author = author
    @rentals = []
  end

  def to_hash
    { id: @id,
      title: @title,
      author: @author,
      rentals: @rentals }
  end

  def add_rental(rental)
    @rentals << rental
  end
end
