FactoryGirl.define do

  factory :message do
    content       Faker::Lorem.paragraph
    img   Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/img/lgtm.jpg'))
    user
    group
  end

end

