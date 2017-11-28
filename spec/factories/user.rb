FactoryGirl.define do

  factory :user do
    name              {Faker::Name.name}
    email                 {Faker::Internet.email}
    password              {Faker::Lorem.characters(10)}
    password_confirmation { |u| u.password }
  end

end
