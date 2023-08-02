require_relative 'basedecorator'
class TrimmerDecorator < BaseDecorator
  def correct_name
    name = @nameable.correct_name
    name.length > 10 ? name.slice(0, 10) : name
  end
end
