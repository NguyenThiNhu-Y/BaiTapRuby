# HỌ và tên: Nguyễn Thị Như Ý
# Mã sinh viên: 1911505310271
class PhuongTien271
    attr_accessor :id271, :hangsx271, :namsx271, :dongxe271, :giaban271, :bienso271, :mauxe271
    def initialize(id271, hangsx271, namsx271, dongxe271, giaban271, bienso271, mauxe271)
        @id271 = id271
        @hangsx271 = hangsx271
        @namsx271 = namsx271
        @dongxe271 = dongxe271
        @giaban271 = giaban271
        @bienso271 = bienso271
        @mauxe271 = mauxe271
    end

    def ThongTin271()
        puts "ID: #{@id271}"
        puts "Hãng sản xuất: #{@hangsx271}"
        puts "Năm sản xuất: #{@namsx271}"
        puts "Dòng xe: #{@dongxe271}"
        puts "Giá bán : #{@giaban271}"
        puts "Biển số xe: #{@bienso271}"
        puts "Màu xe: #{@mauxe271}"
    end
end

class Oto271 < PhuongTien271
    attr_accessor :sochongoi271, :kieudongco271, :nhienlieu271, :sotuikhi271, :ngaydangkiem271
    def initialize(id271, hangsx271, namsx271, dongxe271, giaban271, bienso271, mauxe271, sochongoi271, kieudongco271, nhienlieu271, sotuikhi271, ngaydangkiem271)
        super(id271, hangsx271, namsx271, dongxe271, giaban271, bienso271, mauxe271)
        @sochongoi271 = sochongoi271
        @kieudongco271 = kieudongco271
        @nhienlieu271 = nhienlieu271
        @sotuikhi271 = sotuikhi271
        @sochongoi271 = sochongoi271
        @ngaydangkiem271 = ngaydangkiem271
    end

    def ThongTin271()
        super()
        puts "Số chỗ ngồi: #{@sochongoi271}"
        puts "Kiểu động cơ: #{@kieudongco271}"
        puts "Nhiên liệu: #{@nhienlieu271}"
        puts "Số túi khí : #{@sotuikhi271}"
        puts "Số chỗ ngồi: #{@sochongoi271}"
        puts "Ngày đăng kiểm: #{@ngaydangkiem271}"
    end
end

class XeMay271 < PhuongTien271
    attr_accessor :congsuat271, :dungtich271
    def initialize(id271, hangsx271, namsx271, dongxe271, giaban271, bienso271, mauxe271, congsuat271, dungtich271)
        super(id271, hangsx271, namsx271, dongxe271, giaban271, bienso271, mauxe271)
        @congsuat271 = congsuat271
        @dungtich271 = dungtich271
    end

    def ThongTin271()
        super()
        puts "Công suất: #{@congsuat271}"
        puts "Dung tích bình xăng: #{@dungtich271}"
    end
end

class Xetai271 < PhuongTien271
    attr_accessor :trongtai271
    def initialize(id271, hangsx271, namsx271, dongxe271, giaban271, bienso271, mauxe271, trongtai271)
        super(id271, hangsx271, namsx271, dongxe271, giaban271, bienso271, mauxe271)
        @trongtai271 = trongtai271
    end

    def ThongTin271()
        super()
        puts "Trọng tải: #{@trongtai271}"
    end
end

class QLPTGT271
    attr_accessor :phuongtien271
    def initialize
        @phuongtien271 = []
    end

    def Them271(pt271)
        @phuongtien271 << pt271
    end

    def Xoa271(_id271)
        @phuongtien271.each do |pt|
            if pt.id271 == _id271
                @phuongtien271.delete(pt)
                return true
            end
        end
        return false
    end
# def timKiemByHangSX(keyword208)
#         rs208 = @dsptgt208.select{|ptgt208| ptgt208 if ptgt208.hangSX208.upcase.include? keyword208.upcase}
#         return rs208
#     end

#     def timKiemByMau(keyword208)
#         rs208 = @dsptgt208.select{|ptgt208| ptgt208 if ptgt208.mauXe208.upcase.include? keyword208.upcase}
#         return rs208
#     end

#     def timKiemByBienSo(keyword208)
#         rs208 = @dsptgt208.select{|ptgt208| ptgt208 if ptgt208.bienSo208.upcase.include? keyword208.upcase}
#         return rs208
#     end
    def TimTheoHangSX271(hangsx271)
        result = []
        @phuongtien271.each do |pt|
            if pt.hangsx271 == hangsx271
                result << pt
            end
        end
        return result
        # rs208 = @phuongtien271.select{|ptgt208| ptgt208 if ptgt208.hangsx271.upcase.include? hangsx271.upcase}
        # return rs208
    end

    def TimTheoMau271(mau271)
        result = []
        @phuongtien271.each do |pt|
            if pt.mauxe271 == mau271
                result << pt
            end
        end
        return result
    end

    def TimTheoBienSo(bienso271)
        result = []
        @phuongtien271.each do |pt|
            if pt.bienso271 == bienso271
                result << pt
            end
        end
        return result
    end
end

ql271 = QLPTGT271.new
while true do
    puts "Quản lý phương tiện giao thông"
    puts "1. Thêm phương tiện"
    puts "2. Xóa theo ID"
    puts "3. Tìm phương tiện theo hãng sản xuất, màu, biển số"
    puts "4. Thoát chương trình"
    print "Chọn: "
    chon271 = gets.to_i
    case chon271
    when 1
        puts "1. Thêm ô tô"
        puts "2. Thêm xe máy"
        puts "3. Thêm xe tải"
        xe271 = gets.to_i
        case xe271
        when 1
            puts "Nhập ID: "
            id271 = gets
            puts "Nhập hãng sản xuất: "
            hangsx271 = gets
            puts "Nhập năm sản xuất: "
            namsx271 = gets
            puts "Nhập dòng xe: "
            dongxe271 = gets
            puts "Nhập giá bán: "
            giaban271 = gets
            puts "Nhập biển số: "
            bienso271 = gets
            puts "Nhập màu xe: "
            mauxe271 = gets
            puts "Nhập chỗ ngồi: "
            sochongoi271 = gets.to_i
            puts "Nhập kiểu động cơ: "
            kieudongco271 = gets
            puts "Nhập nhiên liệu: "
            nhienlieu271 = gets
            puts "Nhập số túi khí: "
            sotuikhi271 = gets.to_i
            puts "Nhập ngày đăng kiểm: "
            ngaydangkiem271 = gets
            # oto271 = Oto271.new(id271, hangsx271, namsx271, dongxe271, giaban271, bienso271, mauxe271, sochongoi271, kieudongco271, nhienlieu271, sotuikhi271, ngaydangkiem271)
            ql271.Them271(Oto271.new(id271, hangsx271, namsx271, dongxe271, giaban271, bienso271, mauxe271, sochongoi271, kieudongco271, nhienlieu271, sotuikhi271, ngaydangkiem271))
        when 2
            puts "Nhập ID: "
            id271 = gets
            puts "Nhập hãng sản xuất: "
            hangsx271 = gets
            puts "Nhập năm sản xuất: "
            namsx271 = gets
            puts "Nhập dòng xe: "
            dongxe271 = gets
            puts "Nhập giá bán: "
            giaban271 = gets
            puts "Nhập biển số: "
            bienso271 = gets
            puts "Nhập màu xe: "
            mauxe271 = gets
            puts "Nhập công suất: "
            congsuat271 = gets
            puts "Nhập dung tích bình xăng: "
            dungtich271 = gets
            xemay271 = XeMay271.new(id271, hangsx271, namsx271, dongxe271, giaban271, bienso271, mauxe271, congsuat271, dungtich271)
            ql271.Them271(xe271)
        when 3
            puts "Nhập ID: "
            id271 = gets.to_i
            puts "Nhập hãng sản xuất: "
            hangsx271 = gets
            puts "Nhập năm sản xuất: "
            namsx271 = gets
            puts "Nhập dòng xe: "
            dongxe271 = gets
            puts "Nhập giá bán: "
            giaban271 = gets
            puts "Nhập biển số: "
            bienso271 = gets
            puts "Nhập màu xe: "
            mauxe271 = gets
            puts "Nhập trọng tải"
            trongtai271 = gets
            xetai271 = Xetai271.new(id271, hangsx271, namsx271, dongxe271, giaban271, bienso271, mauxe271, trongtai271)
            ql271.Them271(xetai271)
        else
            puts "Không hợp lệ"
        end
    when 2
        print "Nhập Id phương tiện muốn xóa: "
        _id271 = gets.to_i
        result271 = ql271.Xoa271(_id271)
        if result271
            puts "Xóa thành công"
        else
            puts "Xóa không thành công"
        end
    when 3
        puts "1. Tìm kiếm phương tiện theo hãng sản xuất"
        puts "2. Tìm kiếm phương tiện theo màu"
        puts "3. Tìm kiếm phương tiện theo biển số"
        print "Chọn loại tìm kiếm: "
        tk271 = gets.to_i
        case tk271
        when 1
            print "Nhập hãng sản xuất cần tìm: "
            hangsx271 = gets
            result = ql271.TimTheoHangSX271(hangsx271)
            puts "Thông tin các phương tiện cần tìm: "
            result.each do |pt|
                pt.ThongTin271()
            end
        when 2
            print "Nhập màu cần tìm: "
            mau271 = gets
            result = ql271.TimTheoMau271(mau271)
            puts "Thông tin các phương tiện cần tìm: "
            result.each do |pt|
                pt.ThongTin271()
            end
        when 3
            print "Nhập biển số cần tìm: "
            bienso271 = gets
            result = ql271.TimTheoBienSo(bienso271)
            puts "Thông tin các phương tiện cần tìm: "
            result.each do |pt|
                pt.ThongTin271()
            end
        else
            puts "Không hợp lệ"
        end
    when 4
        puts "Thoát chương trình"
        break
    else
        puts "Không hợp lệ"
    end
end