require './person'

# Represents a student, inherited from the Person class.
class Student < Person
  attr_accessor :name, :classroom

  def initialize(age, classroom, parent_permission: true, name)
    super(age, parent_permission: parent_permission, name)
    @classroom = classroom
  end

  def play_hooky
    '¯\\_(ツ)_/¯'
  end
end
