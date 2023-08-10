require_relative '../library/rental'

describe Rental do
  before(:each) do
    @book = { id: 511, title: 'Money-G', author: 'weaser', rentals: [] }
    @person = { age: 20, type: 'Student', name: 'Jack', rentals: [] }
    @rental = Rental.new('2023/05/23', @book, @person)
  end

  describe '#initialize' do
    it 'initializes variables' do
      expect(@rental.date).to eq('2023/05/23')
      expect(@rental.book).to eq(@book)
      expect(@rental.person).to eq(@person)
    end

    it 'adds rental to book and person' do
      expect(@book[:rentals]).to include(@rental)
      expect(@person[:rentals]).to include(@rental)
    end
  end

  describe '#to_hash' do
    it 'returns rental attributes as a hash' do
      hash = @rental.to_hash

      expect(hash[:date]).to eq('2023/05/23')
      expect(hash[:book]).to eq(@book)
      expect(hash[:person]).to eq(@person)
    end
  end
end
