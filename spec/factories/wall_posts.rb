# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :wall_post do
    message "MyString"
    user ""
    options "MyText"
  end
end
