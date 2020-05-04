# code here!
class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end
    def add_student(name, grade)
        @roster.key?(grade) ? @roster[grade].push(name) : @roster[grade] = [name]
    end
    def grade(number)
        @roster[number]
    end
    def sort()
        keys = @roster.keys.sort()
        hash = {}
        keys.each{ |key| hash[key] = @roster[key].sort() }
        hash
    end
end
