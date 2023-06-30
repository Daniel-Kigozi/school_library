require './nameable'

# Represents a person with basic information such as name, age, and permission to use services.
class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, parent_permission: true, name: 'Unknown')
    super()
    @id = generate_id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    name
  end

  private

  def of_age?
    @age >= 18
  end

  def generate_id
    # Generate an ID here
  end
end
