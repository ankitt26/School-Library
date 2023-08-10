require_relative '../library/student'
describe Student do
  before(:each) do
    @student = Student.new(23, 'Y', 'Doe')
  end

  describe '#to_hash' do
    it 'returns a hash of the student attributes' do
      expect(@student.to_hash[:name]).to eq('Doe')
      expect(@student.to_hash[:age]).to eq(23)
      expect(@student.to_hash[:type]).to eq('Student')
    end
  end

  describe '#classroom' do
    it 'adds a classroom label' do
      classroom = Classroom.new('Math101')
      @student.classroom = classroom

      expect(classroom.students).to include(@student) # Check if student is added to the classroom
    end
  end
end
