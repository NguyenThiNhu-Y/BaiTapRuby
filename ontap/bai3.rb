class Student
    attr_accessor :sbd, :fullName, :address, :levelPriority
    def initialize(sbd, fullName, address, levelPriority)
        @sbd = sbd
        @fullName = fullName
        @address = address
        @levelPriority = levelPriority
    end

    def Infos()
        puts "Số báo danh #{@sbd}"
        puts "Họ và tên #{@fullName}"
        puts "Địa chỉ #{@address}"
        puts "Mức ưu tiên #{@levelPriority}"
    end
end

class StudentA < Student
    attr_accessor :sbd, :fullName, :address, :levelPriority
    MATH = "Toán"
    PHYSICAL = "Lý"
    CHEMISTRY = "Hóa"
    def initialize(sbd, fullName, address, levelPriority)
        super(sbd, fullName, address, levelPriority)
    end

    def Infos()
        super()
        puts "Môn: #{MATH} - #{PHYSICAL} - #{CHEMISTRY}"
    end
end

class StudentB < Student
    attr_accessor :sbd, :fullName, :address, :levelPriority
    MATH = "Toán"
    CHEMISTRY = "Hóa"
    BIOLOGY = "Sinh"
    def initialize(sbd, fullName, address, levelPriority)
        super(sbd, fullName, address, levelPriority)
    end

    def Infos()
        super()
        puts "Môn: #{MATH} - #{CHEMISTRY} - #{BIOLOGY}"
    end
end

class StudentC < Student
    attr_accessor :sbd, :fullName, :address, :levelPriority
    MATH = "Toán"
    CHEMISTRY = "Hóa"
    BIOLOGY = "Sinh"
    def initialize(sbd, fullName, address, levelPriority)
        super(sbd, fullName, address, levelPriority)
    end

    def Infos()
        super()
        puts "Môn: #{MATH} - #{CHEMISTRY} - #{BIOLOGY}"
    end
end

class ManagerStudent
    attr_accessor :Students
    def initialize
        @Students = []
    end

    def Add(stu)
        @Students << stu
    end

    def Show()
        @Students.each do |stu|
            stu.Infos()
        end
    end

    def SearchSbd(sbd)
        @Students.each do |stu|
            if stu.sbd == sbd
                return stu
            end
        end
        return nil
    end
end

manage = ManagerStudent.new
while true do
    puts "Tuyển sinh"
    puts "1. Thêm mới thí sinh"
    puts "2. Hiển thị thông tin của thí sinh và khối thi của thí sinh"
    puts "3. Tìm kiếm theo số báo danh"
    puts "4. Thoát"
    print "Chọn: "
    chon = gets.to_i
    case chon
        when 1
            puts "1. Thêm thí sinh khối A"
            puts "2. Thêm thí sinh khối B"
            puts "3. Thêm thí sinh khối C"
            print "Chọn: "
            khoi = gets.to_i
            print "Nhập số báo danh: "
            sbd = gets
            print "Nhập họ tên: "
            fullName = gets
            print "Nhập địa chỉ: "
            address = gets
            print "Nhập mức ưu tiên: "
            levelPriority = gets
            case khoi
                when 1
                    a = StudentA.new(sbd, fullName, address, levelPriority)
                    manage.Add(a)
                when 2
                    b = StudentB.new(sbd, fullName, address, levelPriority)
                    manage.Add(b)
                when 3
                    b = StudentC.new(sbd, fullName, address, levelPriority)
                    manage.Add(c)
            end
        
        when 2
            puts "Thông tin thí sinh: "
            manage.Show()
        when 3
            print "Nhập số báo danh cần tìm: "
            sbd = gets
            stu = manage.SearchSbd(sbd)
            if(stu != nil)
                stu.Infos()
            else
                puts "Không tìm thấy thí sinh"
            end
        when 4
            puts "Thoát"
            break
        else
            puts "Không hợp lệ"
    end
end