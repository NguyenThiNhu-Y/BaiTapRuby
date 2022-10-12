class Person
    attr_accessor :name, :age, :id, :room, :checkin_date, :checkout_date, :numberRent
    def initialize(name, age, id, room, numberRent)
        self.name = name
        self.age = age
        self.id = id
        self.room = room
        self.numberRent = numberRent
    end

    def display()
        puts "id: #{self.id} -- name: #{self.name} -- age: #{self.age} -- room: #{self.room.category} - #{self.room.price}$"
    end
end

class Room
    attr_accessor :price, :category
    def initialize(price, category)
        self.price = price
        self.category = category
    end

    def display()
        puts "Category: #{self.category} -- Price: #{self.price}"
    end    
end

class RoomA < Room 
    def initialize()
        super(500, "A")
    end
    def display()
        super
    end
end

class RoomB < Room 
    def initialize()
        super(300, "B")
    end
end

class RoomC < Room 
    def initialize()
        super(100, "C")
    end
    def display()
        super
    end
end

class Hotel
    attr_accessor :List
    List = []

    def addPerson(person)
        List << person
    end

    def CalRent(personId)
        List.each do |person| 
        if (person.id.eql?( personId))
            person.display()
            puts "Rent : #{person.numberRent.to_f * person.room.price.to_f}"
        end
        end
    end

    def removePerson(personID)
        List.delete_if { |person| person.id.eql?( personID ) }
        display()
    end

    def display()
        List.each do |person| person.display() end
    end
end

roomA = RoomA.new()
roomB = RoomB.new()
roomC = RoomC.new()

person1 = Person.new('Customer A', '12', '1', roomA, 2)
person2 = Person.new('Customer B', '21', '2', roomC, 3)
person3 = Person.new('Customer B', '22', '3', roomB, 2)

hotel = Hotel.new()
hotel.addPerson(person1)
hotel.addPerson(person2)
hotel.addPerson(person3)
hotel.removePerson('2')