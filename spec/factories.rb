FactoryGirl.define do
  sequence :job_number do |n|
    "project_number#{n}"
  end

  factory :project do
    name 'project_name'
    job_number
  end

  factory :drive do
    number 'drive_number'
  end

  factory :archive do
    project_id 1
    drive_id 1

    project
    drive
  end
end
