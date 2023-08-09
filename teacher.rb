require_relative 'person'

class Teacher < Person
  def initialize(age, specialization, name = 'Unknown', type = 'Teacher', parent_permission: true)
    super(age, type, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def to_hash
    { name: @name,
      age: @age,
      type: @type,
      specialization: @specialization }
  end

  def can_use_services?
    true
  end
end
