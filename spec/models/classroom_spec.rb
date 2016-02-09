require 'rails_helper'

RSpec.describe Classroom, :type => :model do
  
  describe 'validations' do
    it { should validate_presence_of(:student) }
    it { should validate_presence_of(:course) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:student) }
    it { is_expected.to belong_to(:course) }
  end

  def next
    next_classroom_position = position
    classroom.find_by(position: next_classroom_position)
  end

end
