class Student 
    attr_accessor :name, :age, :hometown, :classs

    def initialize(name, age, hometown, classs)
        self.name = name
        self.age = age
        self.hometown = hometown
        self.classs = classs
    end

    def display()
        puts "#{self.name} = #{self.age} = #{self.hometown} = #{self.classs}"
    end
end

class School
    attr_accessor :ListStudent
    ListStudent = []
    def initialize()

    end

    def addStudent(student)
        ListStudent << student
    end

    def SeachStudent (age, hometown)
        ListStudent.each do |student| 
        if(student.age == age && student.hometown.include?(hometown))
            student.display() 
        end
        end
    end
    def display()
        ListStudent.each do |student| student.display() end
    end
end

student1 = Student.new('name1', 19, 'QN', 'A')
student2 = Student.new('name2', 19, 'hometown', 'B')
student3 = Student.new('name3', 20, 'QN', 'C')
student4 = Student.new('name4', 21, 'hometown', 'A')

school = School.new()
school.addStudent(student1)
school.addStudent(student2)
school.addStudent(student3)
school.addStudent(student4)
school.SeachStudent(19, '')
school.SeachStudent(20, 'QN')