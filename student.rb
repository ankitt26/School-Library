require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_reader :classroom

  def initialize(age, parent_permission, name = 'Unknown', type = 'Student')
    super(age, type, name, parent_permission: parent_permission)
  end

  def to_hash
    { name: @name,
      age: @age,
      id: @id,
      type: @type,
      parent_permission: @parent_permission }
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
