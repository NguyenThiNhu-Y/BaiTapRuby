class CanBo 
    attr_accessor :name271, :age271, :gender271, :address271
    def initialize(name271, age271, gender271, address271)
        @name271 = name271
        @age271 = age271  
        @gender271 = gender271
        @address271 = address271      
    end 
    def ThongTin()
        print "Tên: #{@name271} "
        print "Tuổi: #{@age271} "
        print "Giới tính: #{@gender271} "
        print "Địa chỉ: #{@address271} "
    end
end

class CongNhan < CanBo
    def initialize(name271, age271, gender271, address271, level271)
        super(name271, age271, gender271, address271)
        @level271 = level271
    end 
    def ThongTin()
        super()
        print "Bậc: #{@level271} "
    end
end

class KySu < CanBo
    def initialize(name271, age271, gender271, address271, trainingIndustry271)
        super(name271, age271, gender271, address271)
        @trainingIndustry271 = trainingIndustry271
    end 
    def ThongTin()
        super()
        print "Ngành đào tạo: #{@trainingIndustry271} "
    end
end

class NhaVien < CanBo
    def initialize(name271, age271, gender271, address271, job271)
        super(name271, age271, gender271, address271)
        @job271 = job271
    end 
    def ThongTin()
        super()
        print "Công việc: #{@job271} "
    end
end

class QLCB
    def initialize()
        @canBo = []
    end
    def ThemMoi(cb)
        @canBo << cb
    end
    
    def TimKiem(ten)
        rs = @canBo.select{|cb| cb if cb.name271.upcase.include? ten.upcase}
        return rs
    end

    def HienThi()
        @canBo.each do |cb|
            puts cb.ThongTin()
        end
    end
end

ql = QLCB.new
while true do
    puts "Quản lý cán bộ"
    puts "1: Thêm mới cán bộ"
    puts "2: Tìm kiếm cán bộ theo tên"
    puts "3: Hiển thị thông tin cán bộ"
    puts "4: Thoát"
    print "Chọn: "
    c = gets.to_i
    case c
        when 1
            puts "1: Thêm mới kỹ sư"
            puts "2: Thêm mới công nhân"
            puts "3: Thêm mới nhân viên"
            chon = gets.to_i
            case chon
                when 1
                    print "Nhập tên cán bộ: "
                    name271 = gets
                    print "Nhập tuổi cán bộ: "
                    age271 = gets
                    print "Nhập giới tính cán bộ: "
                    gender271 = gets
                    print "Nhập địa chỉ cán bộ: "
                    address271 = gets
                    print "Nhập ngành đào tạo: "
                    trainingIndustry271 = gets
                    ks = KySu.new(name271, age271, gender271, address271, trainingIndustry271)
                    ql.ThemMoi(ks)
                    
                when 2
                    print "Nhập tên cán bộ: "
                    name271 = gets
                    print "Nhập tuổi cán bộ: "
                    age271 = gets
                    print "Nhập giới tính cán bộ: "
                    gender271 = gets
                    print "Nhập địa chỉ cán bộ: "
                    address271 = gets
                    print "Nhập bậc cán bộ: "
                    level271 = gets
                    cn = CongNhan.new(name271, age271, gender271, address271, level271)
                    ql.ThemMoi(cn)
                when 3
                    print "Nhập tên cán bộ: "
                    name271 = gets
                    print "Nhập tuổi cán bộ: "
                    age271 = gets
                    print "Nhập giới tính cán bộ: "
                    gender271 = gets
                    print "Nhập địa chỉ cán bộ: "
                    address271 = gets
                    print "Nhập công việc: "
                    job271 = gets
                    nv = NhaVien.new(name271, age271, gender271, address271, job271)
                    ql.ThemMoi(nv)
            end
        when 2
            puts "Nhập tên cán bộ cần tìm: "
            name271 = gets
            rs = ql.TimKiem(name271)
            rs.each do |cb|
                puts cb.ThongTin()
            end
        when 3
            ql.HienThi()
        when 4
            puts "Thoat"
            break
        else
            puts "Không hợp lệ"
        # end
    end
end
# ks = KySu.new("a",10,"nam", "DN","CNTT")
# ql = QLCB.new
# ql.ThemMoi(ks)
# ql.HienThi()
