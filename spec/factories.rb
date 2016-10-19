FactoryGirl.define do

  factory :checkout do
    borrower "borrower name"
    status "Checked Out"
    borrow_date DateTime.now
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
