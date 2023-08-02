require_relative 'person'
require_relative 'basedecorator'
require_relative 'capitalizedecorator'
require_relative 'trimmerdecorator'
require_relative 'nameable'
require_relative 'student'
require_relative 'teacher'

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
