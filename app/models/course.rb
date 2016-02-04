class Course < ActiveRecord::Base
	has_many :classrooms

	def status_option
        status_option = case status
        when 0
            'Inativo'
        when 1
            'Ativo'
        end
    end
end
