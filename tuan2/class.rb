class SinhVien
    def initialize(hoTen, lop)
        @hoTen = hoTen
        @lop = lop  
        @diemToan = 0
        @diemLy = 0
        @diemHoa = 0      
    end 

    def nhapDiem(diem, mon)
        case mon
            when "TOAN"
                @diemToan = diem
            when "LY"
                @diemLy = diem
            when "HOA"
                @diemHoa = diem
            else
                return
        end
    end

    def diemTrungBinh()
        sum = @diemToan + @diemHoa + @diemLy
        avg = (sum.to_f / 3).round(2)
        return avg
    end

    def thongTin()
        print "Tên: #{@hoTen} Lớp: #{@lop}\n"
        puts "Điểm Toán: #{@diemToan}"
        puts "Điểm Lý: #{@diemLy}"
        puts "Điểm Hóa: #{@diemHoa}"
    end
end

sv = SinhVien.new("Như Ý", "19T2")

sv.nhapDiem(10, "TOAN")
sv.nhapDiem(10, "LY")
sv.nhapDiem(9, "HOA")

sv.thongTin
puts "Điểm trung bình: #{sv.diemTrungBinh}"