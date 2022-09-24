class Man 
    def initialize(name, gender, haircolor, height, weight, phone)
        @name = name
        @gender = gender  
        @haircolor = haircolor
        @height = height      
        @weight = weight
        @phone = phone
    end 
    def thongTin()
        print "Tên: #{@name} "
    end
end

class Student < Man
    def initialize(name, gender, haircolor, height, weight, phone, shcool, studentId, grade1, grade2, grade3)
        super(name, gender, haircolor, height, weight, phone)
        @shcool = shcool
        @studentId = studentId  
        @grade1 = grade1
        @grade2 = grade2      
        @grade3 = grade3
    end 
    def average
        sum = @grade1 + @grade2 + @grade3
        avg =  (sum.to_f / 3).round(2)
        return avg
    end
    def thongTin()
        super()
        print "Tên: #{@name} "
        print "Mã sinh viên: #{@studentId} "
        print "Điểm trung bình: #{average} "
    end
end

std1 = Student.new("Nhu Y 1", "Nữ", "Đen", 1.55, 45, "0327048268", "DHSPKT-DHDN", "1911505310271", 10, 9, 8)
std2 = Student.new("Nhu Y 2", "Nữ", "Đen", 1.56, 46, "0327048267", "DHSPKT-DHDN", "1911505310261", 8, 9, 8)
std3 = Student.new("Nhu Y 3", "Nữ", "Đen", 1.57, 47, "0327048266", "DHSPKT-DHDN", "1911505310251", 10, 9, 9)
std4 = Student.new("Nhu Y 4", "Nữ", "Đen", 1.58, 48, "0327048265", "DHSPKT-DHDN", "1911505310241", 7, 9, 8)

std = []
std << std1
std << std2
std << std3
std << std4
std = std.sort_by {|s| [-s.average]}
std.each do |s|
    puts s.thongTin
end
