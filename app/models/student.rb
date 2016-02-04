class Student < ActiveRecord::Base
    has_many :classrooms

    validates :name, presence: true
    validates :status, presence: true

    def semester
        year = Time.now.year.to_s
        year = year[2..3]
        month = Time.now.month
        if month < 7
            semesterNumber = '1'
        else
            semesterNumber = '2'
        end
        semester = year << semesterNumber
        return semester
    end

    def studentNumber
        studentLast = Student.maximum(:id).next
        studentID = studentLast.to_s

        if studentID.size == 1
            studentNumber = '0000' << studentID
        elsif studentID.size == 2
            studentNumber = '000' << studentID
        elsif studentID.size == 3
            studentNumber = '00' << studentID
        elsif studentID.size == 4
            studentNumber = '0' << studentID
        elsif studentID.size == 3
            studentNumber = studentID
        end

        return studentNumber
    end

    after_initialize do
        if self.new_record?
            register = semester << studentNumber
            self.register_number = register
        end
    end

    def status_option
        status_option = case status
        when 1
            'Matriculado'
        when 2
            'Formado'
        when 3
            'Transferido'
        when 4
            'Cancelado'
        when 5
            'Jubilado'
        end
    end
end
