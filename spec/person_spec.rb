require_relative '../library/person'

describe Person do
  before(:each) do
    @person = Person.new(20, 'Student', 'Jack')
  end

  describe '#initialize' do
    it 'sets age, type, name of person' do
      expect(@person.age).to eq(20)
      expect(@person.type).to eq('Student')
      expect(@person.name).to eq('Jack')
      expect(@person.rentals).to eq([])
    end
  end

  describe '#add_rental' do
    it 'add a rental' do
      rental = double('rental')
      @person.add_rental(rental)
      expect(@person.rentals).to include(rental)
    end
  end

  describe '#correct_name' do
    it 'return the name' do
      expect(@person.correct_name).to eq(@person.name)
    end
  end

  describe '#can_use_services?' do
    it 'check if age is 18 or greater ' do
      expect(@person.can_use_services?).to eq(true)
    end
  end
end
