require_relative 'nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals, :type

  def initialize(age, type, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @type = type
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rental(rental)
    rentals << rental unless rentals.include?(rental)
  end

  def correct_name
    @name
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? && @parent_permission
  end

  private :of_age?
end
