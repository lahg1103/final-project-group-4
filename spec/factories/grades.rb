FactoryBot.define do
  factory :grade do
    sequence(:student_id){ 6.times.map{rand(9)}.join }
    sequence(:student_name) { |n| "Student #{n}" }

    trait :valid do
      student_grade { 70 }
    end

    trait :invalid do
      student_grade { -70 }
    end
  end
end
