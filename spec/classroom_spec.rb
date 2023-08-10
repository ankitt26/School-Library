require_relative '../library/classroom'

describe Classroom do
  before(:each) do
    @class = Classroom.new('Math-234')
  end

  describe '#initialize' do
    it 'creates a new Label class' do
      expect(@class.label).to eq('Math-234')
      expect(@class.students).to eq([])
    end
  end

  describe '#add_student' do
    it 'adds a student to the classroom' do
      student = double('student1')
      expect(student).to receive(:classroom=).with(@class)
      @class.add_student(student)

      expect(@class.students).to include(student)
    end
  end
end
