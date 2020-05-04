class School 
    attr_reader :school, :roster

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade]<<"#{student}"
    end

    def grade(grade)
        @roster[grade]
    end 

    def sort
       sorted_roster= {}
       roster.each do |grades, students|
        sorted_roster[grades]= students.sort
       end 
       sorted_roster
    end
end
