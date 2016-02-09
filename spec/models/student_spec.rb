require 'rails_helper'

RSpec.describe Student do
  
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:status) }
    it { should validate_presence_of(:register_number) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:classrooms) }
  end

  def next
    next_student_position = position
    student.find_by(position: next_student_position)
  end

end
