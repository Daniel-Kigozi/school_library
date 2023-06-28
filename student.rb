# frozen_string_literal: true

require './person'

# Represents a student, inherited from the Person class.
class Student < Person
  def initialize(age, classroom, parent_permission: true, name: 'Unknown')
    super(age, parent_permission: parent_permission, name: name)
    @classroom = classroom
  end

  def play_hooky
    '¯\\_(ツ)_/¯'
  end
end
