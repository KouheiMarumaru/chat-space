FactoryGirl.define do

  factory :message do
    content       Faker::Lorem.paragraph
    img           "test.jpg"
    user
    group
  end

end

