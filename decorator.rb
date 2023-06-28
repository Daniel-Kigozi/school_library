require './nameable'

# Represents base decorator
class Decorator < Nameable
  def initialize(nameable)
    super(name: name)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
