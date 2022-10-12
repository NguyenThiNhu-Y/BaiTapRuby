class Nguoi
    attr_accessor :hoTen, :tuoi, :ngheNghiep, :cmnd
    def initialize(hoTen, tuoi, ngheNghiep, cmnd)
        @hoTen = hoTen
        @tuoi = tuoi
        @ngheNghiep = ngheNghiep
        @cmnd = cmnd
    end 

    def Infos()
        puts "Họ và tên: #{@hoTen}"
        puts "Tuổi: #{@tuoi}"
        puts "Nghề nghiệp: #{@ngheNghiep}"
        puts "CMND: #{@cmnd}"
    end
end

class HoGiaDinh 
    # attr_accessor :soThanhVien, :soNha, :nguois
    # @nguois = []
    def initialize(soThanhVien, soNha)
        @soThanhVien = soThanhVien
        @soNha = soNha
        @nguois =[]
    end

    def addNguoi(ng)
        @nguois << ng
    end

    def Infos()
        puts "Số thành viên: #{@soThanhVien}"
        puts "Số nhà: #{@soNha}"
        puts "Thông tin các thành viên: "
        @nguois.each do |tv|
            tv.Infos()
        end
    end
end

class KhuPho
    # attr_accessor :hoGiaDinhs
    def initialize
        @hoGiaDinhs = []
    end

    def addHoGD(hGD)
        @hoGiaDinhs << hGD
    end

    def Infos()
        @hoGiaDinhs.each do |ho|
            ho.Infos()
        end
    end
end

print "Nhập số hộ dân: "
n = gets.to_i
kp = KhuPho.new
for i in 1..n do
    puts "Nhập thông tin hô dân thứ #{i}"
    print "Nhập số nhà: "
    soNha = gets
    print "Nhập số thành viên: "
    soThanhVien = gets.to_i
    for j in 1..soThanhVien do
        puts "Nhập thông tin thành viên thứ #{j}"
        print "Nhập họ tên: "
        hoTen = gets
        print "Nhập tuổi: "
        tuoi = gets.to_i
        print "Nhập nghề nghiệp: "
        ngheNghiep = gets
        print "Nhập CMND: "
        cmnd = gets
        ng = Nguoi.new(hoTen, tuoi, ngheNghiep, cmnd)
        hd = HoGiaDinh.new(soThanhVien, soNha)
        hd.addNguoi(ng)
    end
    kp.addHoGD(hd)
end
kp.Infos()

