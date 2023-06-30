require './person'

# Represents a student, inherited from the Person class.
class Student < Person

  def initialize(age, classroom, name, parent_permission: true)
    super(age, parent_permission: parent_permission, name: name)
    @classroom = classroom
  end

  def play_hooky
    '¯\\_(ツ)_/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
