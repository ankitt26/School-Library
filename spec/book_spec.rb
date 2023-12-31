require_relative '../library/book'

describe Book do
  before(:each) do
    @book = Book.new('Money-G', 'weaser')
  end

  describe '#initialize' do
    it 'sets title, author, and initializes an empty rentals array' do
      expect(@book.title).to eq('Money-G')
      expect(@book.author).to eq('weaser')
      expect(@book.rentals).to eq([])
    end
  end

  describe '#to_hash' do
    it 'creates a hash table' do
      expect(@book.to_hash[:title]).to eq('Money-G')
      expect(@book.to_hash[:author]).to eq('weaser')
      expect(@book.to_hash[:rentals]).to eq([])
    end
  end

  describe '#add_rental' do
    it 'adds the rental to the rentals array' do
      rental = double('rental')
      @book.add_rental(rental)

      expect(@book.rentals).to include(rental)
    end
  end
end
