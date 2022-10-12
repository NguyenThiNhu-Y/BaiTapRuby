class Document
    attr_accessor :id271, :nxb271, :number271
    def initialize(id271, nxb271, number271)
        @id271 = id271
        @nxb271 = nxb271
        @number271 = number271
    end

    def show()
        print "Mã tài liệu: #{@id271} "
        print "Nhà xuất bản: #{@nxb271} "
        print "Số bản phát hành: #{@number271} "
    end
end

class Book < Document
     attr_accessor :id271, :nxb271, :number271, :author271, :numberPage271
     def initialize(id271, nxb271, number271, author271, numberPage271)
        super(id271, nxb271, number271)
        @author271 = author271
        @numberPage271 = numberPage271
     end
     def show()
        super()
        print "Tác giả #{@author271} "
        print "Số trang: #{@number271} "
    end
end

class Journal < Document
    attr_accessor :id271, :nxb271, :number271, :issueNumber271, :monthIssue271
    def initialize(id271, nxb271, number271, issueNumber271, monthIssue271)
        super(id271, nxb271, number271)
        @issueNumber271 = issueNumber271
        @monthIssue271 = monthIssue271
    end
    def show()
        super()
        print "Số phát hành #{@issueNumber271} "
        print "Tháng phát hành: #{@monthIssue271} "
    end
end

class Newspaper < Document
    attr_accessor :id271, :nxb271, :number271,:dateIssue271
    def initialize(id271, nxb271, number271,dateIssue271)
        super(id271, nxb271, number271)
        @dateIssue271 = dateIssue271
    end
    def show()
        super()
        print "Ngày phát hành: #{@dateIssue271} "
    end
end

class ManagerDocument
    attr_accessor :Docs271
    def initialize
        @Docs271 = []
    end

    def Add(doc271)
        @Docs271 << doc271
    end

    def Delete(id)
        @Docs271.each do |doc|
            if doc.id271 == id
                @Docs271.delete(doc)
                return true
            end
        end
        return false
    end

    def ShowInfos()
        @Docs271.each do |doc|
            doc.show()
        end
    end
    
    def SearchBook()
        rs = @Docs271.select{|doc| doc if doc.class.ancestors.include? Book}
        rs.each do |doc|
            doc.show()
        end
    end

    def SearchNewspaper()
        rs = @Docs271.select{|doc| doc if doc.class.ancestors.include? Newspaper}
        rs.each do |doc|
            doc.show()
        end
    end

    def SearchJournal()
        rs = @Docs271.select{|doc| doc if doc.class.ancestors.include? Journal}
        rs.each do |doc|
            doc.show()
        end
    end

end

manage = ManagerDocument.new
while true do
    puts "Quản lý sách"
    puts "1. Thêm mới tài liệu"
    puts "2. Xóa tài liệu theo mã tài liệu"
    puts "3. Hiển thị thông tin tài liệu"
    puts "4. Tìm kiếm tài liệu theo loại: Sách, tạp chí, báo"
    puts "5. Thoát khỏi chương trình"
    print "Chọn: "
    chon = gets.to_i
    case chon
        when 1
            puts "1. Thêm sách"
            puts "2. Thêm tạp chí"
            puts "3. Thêm báo"
            print "Chọn: "
            c = gets.to_i
            case c
                when 1
                    print "Nhập ID: "
                    id271 = gets
                    print "Nhập tên nhà xuất bạn: "
                    nxb271 = gets
                    print "Nhập số bản phát hành: "
                    number271 = gets
                    print "Nhập tên tác giả: "
                    author271 = gets
                    print "Nhập số trang: "
                    numberPage271 = gets
                    book271 = Book.new(id271, nxb271, number271, author271, number271)
                    manage.Add(book271)
                when 2
                    print "Nhập ID: "
                    id271 = gets
                    print "Nhập tên nhà xuất bạn: "
                    nxb271 = gets
                    print "Nhập số bản phát hành: "
                    number271 = gets
                    print "Nhập số phát hành: "
                    issueNumber271 = gets
                    print "Nhập tháng phát hành: "
                    monthIssue271 = gets
                    journal271 = Journal.new(id271, nxb271, number271, issueNumber271, monthIssue271)
                    manage.Add(journal271)
                when 3
                    print "Nhập ID: "
                    id271 = gets
                    print "Nhập tên nhà xuất bạn: "
                    nxb271 = gets
                    print "Nhập số bản phát hành: "
                    number271 = gets
                    print "Nhập ngày phát hành: "
                    dateIssue271 = gets
            end
        when 2
            print "Nhập id tài liệu cần xóa: "
            id271 = gets
            rs = manage.Delete(id271)
            if rs
                puts "Đã xóa"
            else
                puts "Không tìm thấy tài liệu"
            end
        when 3
            puts "Thông tin về tài liệu: "
            manage.ShowInfos()
        when 4
            puts "1. Tìm sách"
            puts "2. Tìm tạp chí"
            puts "3. Tìm báo"
            puts "Chọn loại tài liệu muốn tìm"
            c = gets.to_i
            case c
                when 1
                    manage.SearchBook
                when 2
                    manage.SearchJournal
                when 3
                    manage.SearchNewspaper
            end
        when 5
            puts "Thoát"
            break
        else
            puts "Không hợp lệ"
    end
end


