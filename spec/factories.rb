FactoryGirl.define do

  factory :drive do
    name "name"
    project "project"
    notes "special notes"
  end

  factory :user do
    login "login"
    name "name"
  end

end
