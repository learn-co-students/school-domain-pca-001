class  School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade].nil?
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_with_object({}) do |(grade,students), result|
      result[grade] = students.sort
  end
end
end