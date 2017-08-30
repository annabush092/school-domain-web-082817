class School

  attr_accessor
  attr_reader :name, :roster
  attr_writer

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    self.roster[grade] = [] if !self.roster[grade]
    self.roster[grade] << name
  end

  def grade(num)
    self.roster[num]
  end

  #sort students alphabetically within grades
  def sort
    self.roster.each do |grade, students|
      students.sort!
    end
    self.roster
  end
end
