require "pry"
class School 
    
    attr_accessor :name, :roster, :sorted_student

    def initialize(name) 
        @name = name
        @roster = {}
    end

    def add_student(student,grade)
        @roster[grade]||= []
        @roster[grade] << student
    
    end
    
    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_student = @roster.each {|grade,student|
        @roster[grade] = student.sort}
      
    end
end