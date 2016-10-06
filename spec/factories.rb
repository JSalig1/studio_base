FactoryGirl.define do

  factory :checkout do
    borrower "borrower name"
    status "Checked Out"
    date Date.today
    purpose "special notes"
    drive
  end

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
