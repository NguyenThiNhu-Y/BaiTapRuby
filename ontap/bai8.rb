class Student 
    attr_accessor :name, :age, :classs
    def initialize(name, age, classs)
        self.name = name
        self.age = age
        self.classs = classs
    end

    def display()
        puts "#{self.name} || #{self.age} || #{self.classs}"
    end
end

class Card
    attr_accessor :id, :student, :borrowDate, :paymentDate, :bookId
    def initialize(id, student, borrowDate, paymentDate, bookId)
        self.id = id
        self.student = student
        self.borrowDate = borrowDate
        self.paymentDate = paymentDate
        self.bookId = bookId
    end

    def display()
        puts "id card = #{self.id} student name = #{self.student.name}"
    end
end

class ManagerCard
  attr_accessor :LisrCard;
  ListCard = []

  def addCard(card)
    ListCard << card
  end

  def display()
    ListCard.each do |card| card.display() end
  end
end

student1 = Student.new('name1', 'age', 'classs')
student2 = Student.new('name2', 'age', 'classs')
student3 = Student.new('name3', 'age', 'classs')

card = Card.new(1, student1, 'borrowDate', 'paymentDate', 'bookId')
card1 = Card.new(2, student2, 'borrowDate', 'paymentDate', 'bookId')
card2 = Card.new(3, student3, 'borrowDate', 'paymentDate', 'bookId')
managerCard = ManagerCard.new()
managerCard.addCard(card)
managerCard.addCard(card1)
managerCard.addCard(card2)

managerCard.display()