class Course < ActiveRecord::Base
	has_many :classrooms

	validates :name, presence: true
	validates :description, presence: true
	validates :status, presence: true

	def status_option
        status_option = case status
        when 0
            'Inativo'
        when 1
            'Ativo'
        end
    end
end
