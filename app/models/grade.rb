class Grade < ApplicationRecord
    validates_presence_of :student_id
    validates_presence_of :student_name
    validates_presence_of :student_grade
    validate :grade_must_be_greater_than_or_equal_to_zero
    validate :grade_must_be_less_than_or_equal_to_100       # No grades over 100
  
    # Custom validator: makes sure grade is greater than or equal to zero
    def grade_must_be_greater_than_or_equal_to_zero
      if student_grade.present? && student_grade < 0
        errors.add(:student_grade, "can't be less than 0")
      end
    end
  
    # Custom validator: makes sure grade is less than or equal to 100
    def grade_must_be_less_than_or_equal_to_100
      if student_grade.present? && student_grade > 100
        errors.add(:student_grade, "can't be greater than 100")
      end
    end
  
    def student_id_is_6_chars_long
      if student_id.to_s.length != 6
        errors.add(:student_id, "must be 6 characters long")
      end
    end
end
