require 'pry'

class School

    # ROSTER = {}

    def initialize(name)
      @name=name
      @school_roster={}
    end

    def name
      @name
    end

    def roster
      @school_roster
    end

    def add_student(name, grade)
      if @school_roster.has_key? (grade)
        @school_roster[grade]<<name
      else
        @school_roster[grade]=[name]
      end
    end

    def grade(grade)
      @school_roster[grade]
    end

    def sort
      @school_roster.each do |grade, students|
        students.sort!
      end
    end
end