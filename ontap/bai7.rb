class Teacher
    attr_accessor :name, :age, :hometown, :id, :salary, :bonus, :penaty, :realSalary
    def initialize(id, name, age, hometown, salary,bonus, penaty)
        self.name = name
        self.age = age.to_i
        self.hometown = hometown
        self.id = id
        self.salary = salary.to_f
        self.bonus = bonus.to_f
        self.penaty = penaty.to_f
    end

    def display()
        puts "#{self.id} | #{self.name} | #{self.age} | #{self.hometown} | #{self.salary} | #{self.bonus} | #{self.penaty} | #{self.realSalary}"
    end
end

class ManagerTeacher
    attr_accessor :ListTeacher
    ListTeacher = []

    def addTeacher(teacher)
        ListTeacher << teacher
    end

    def cal_realSalary(teacherID)
        ListTeacher.each do |teacher| 
        if(teacher.id.eql?(teacherID))
            teacher.realSalary = teacher.salary + teacher.bonus - teacher.penaty
        end
        end
    end
    def display()
        ListTeacher.each do |teacher| teacher.display() end
    end
end

teacher1 = Teacher.new('1', 'name', 'age', 'hometown', 10000, 1000, 100)
teacher2 = Teacher.new('2', 'name', 'age', 'hometown', 10000, 1000, 100)
teacher3 = Teacher.new('3', 'name', 'age', 'hometown', 10000, 1000, 100)

manager = ManagerTeacher.new()

manager.addTeacher(teacher1)
manager.addTeacher(teacher2)
manager.addTeacher(teacher3)
manager.cal_realSalary('1')
manager.display()
