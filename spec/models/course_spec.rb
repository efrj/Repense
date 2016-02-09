require 'rails_helper'

RSpec.describe Course do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:status) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:classrooms) }
  end

  def next
    next_course_position = position
    course.find_by(position: next_course_position)
  end


end
