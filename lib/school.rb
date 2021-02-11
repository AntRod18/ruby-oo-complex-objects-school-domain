# code here!

class School
attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(students, grades)
        @roster[grades] ||= []
        @roster[grades] << students
        # if @roster[grades] != nil
        #     @roster[grades]
        # else 
        #     @roster[grades] = []
        # end
        # @roster[grades] << students
    end

    def grade(grades)
        @roster[grades]
    end

    def sort
        organized = {}
        @roster.each do |grades, students|
            organized[grades] = students.sort
        end
        organized
    end



end