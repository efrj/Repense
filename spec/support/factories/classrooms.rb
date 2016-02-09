# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :classroom do
    student 1
    course 1
    entry_at "2016-02-08 11:31:13"
  end
end
