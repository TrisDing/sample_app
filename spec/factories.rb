FactoryGirl.define do
  factory :user do
    name     "Jason Ding"
    email    "jding@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end