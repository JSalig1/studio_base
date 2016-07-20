FactoryGirl.define do
  sequence :job_number do |n|
    "project_number#{n}"
  end

  sequence :name do |n|
    "drive_number#{n}"
  end

  factory :project do
    name 'project_name'
    job_number
  end

  factory :drive do
    name "name"
    project "project"
  end

  factory :archive do
    project_id 1
    drive_id 1

    project
    drive
  end
end
