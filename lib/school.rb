require 'pry'

class School
    attr_accessor :student, :student_grade, :school_roster
    def initialize(names)
        @student = names
        @school_roster = {} #roster is defined as a hash here
    end
 
    def roster 
        school_roster
    end

    def add_student(student, student_grade)
        roster[student_grade] ||= [] #roster hash is defined as keys(grades) that refer to an array (student name)
        roster[student_grade] << student #shovels the students into their grades ARRAY
    end
    
    def grade(student_grade)
        roster[student_grade]
    end
    def sort
        # sorted_list = {}
        roster.each do |grade, student|
            student.sort!         #sorts for each ARRAY of students inside each KEY (grades)
        end
        # sorted_list
    end
end

# school = School.new("Bayside High School")
# school.add_student("AC Slater", 9)

# # binding.pry