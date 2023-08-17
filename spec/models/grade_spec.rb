require 'rails_helper'

RSpec.describe Grade, type: :model do
  it "requires a student id to be valid" do
    grade = Grade.new(student_name: "Fred Flinstone", student_grade: 20)
    expect(grade).to be_invalid
  end

  it "requires a student name to be valid" do
    grade = Grade.new(student_id: "111222", student_grade: 100)
    expect(grade).to be_invalid
  end

  it "requires a grade to be valid" do
    grade = Grade.new(student_id: "146454", student_name: "Johah Hill")
    expect(grade).to be_invalid
  end

  it "is valid when given a valid student id, valid student name, and valid grade" do
    grade = Grade.new(student_id: "123451", student_name: "Bobby Flay", student_grade: 100)
    expect(grade).to be_valid
  end

  it "requires the grade to be greater than or equal to 0" do
    grade = Grade.new(student_id: "184848", student_name: "Joe Exotic", student_grade: -30)
    expect(grade).to be_invalid
  end

  it "is not valid with a value above 100" do
    grade = Grade.new(student_id: "184848", student_name: "Joe Exotic", student_grade: 110)
    expect(grade).to be_invalid
    expect(grade.errors[:student_grade]).to include("can't be greater than 100")
  end  

end
