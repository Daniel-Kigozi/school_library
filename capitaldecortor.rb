require './decorator'

# Represents capitalization
class CapitalizeDecorator < Decorator
  def correct_name
    super.capitalize
  end
end
