class Grade
    attr_accessor :grade1, :grade2, :grade3

    def average
        sum = grade1 + grade2 + grade3
        avg = sum.to_f / 3
        return avg
    end
end
grade = Grade.new
grade.grade1 = 10
grade.grade2 = 9
grade.grade3 = 8
puts grade.average
