require_relative '../library/teacher'

describe Teacher do
  before(:each) do
    @teacher = Teacher.new(45, 'economics', 'Mohluni bhui')
  end

  describe '#to_hash' do
    it 'returns a hash of the teacher attributes' do
      expect(@teacher.to_hash[:name]).to eq('Mohluni bhui')
      expect(@teacher.to_hash[:age]).to eq(45)
      expect(@teacher.to_hash[:type]).to eq('Teacher')
      expect(@teacher.to_hash[:specialization]).to eq('economics')
    end
  end
end
